import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heart_pick/data/models/requests/result_game_request.dart';
import 'package:heart_pick/domain/repositories/app_repository.dart';

import '../../data/datasourse/local/hive_database.dart';
import '../../domain/entities/product.dart';

part 'game_bloc.freezed.dart';

@freezed
class GameEvent with _$GameEvent {
  const GameEvent._();

  const factory GameEvent.loadProducts() = _LoadProductsGameEvent;

  const factory GameEvent.sendGameResult() = _SendGameResultEvent;

  const factory GameEvent.changeGameStep() = _ChangeGameStepEvent;

  const factory GameEvent.selectProduct(int likeId) = _SelectProductEvent;
}

@freezed
class GameState with _$GameState {
  const GameState._();

  const factory GameState.initial() = InitialGameState;

  const factory GameState.loading() = LoadingGameState;

  const factory GameState.error() = ErrorGameState;

  const factory GameState.data({
    required List<List<Product>> products,
    required int currentStep,
    required int totalStep,
    @Default(0) int bonus,
    @Default([]) List<int> likeIds,
    int? currentLikeId,
  }) = DataGameState;
}

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc({
    required AppRepository repository,
    required HiveService hiveService,
  })  : _repository = repository,
        _hiveService = hiveService,
        super(const GameState.initial()) {
    on<GameEvent>(
      (event, emit) => emit.forEach<GameState>(_mapEventToState(event), onData: (e) => e),
    );
  }

  final AppRepository _repository;
  final HiveService _hiveService;

  final List<int> _likesIds = [];

  Stream<GameState> _mapEventToState(GameEvent event) => event.map(
        loadProducts: _mapLoadEventToState,
        sendGameResult: _mapSendGameResultEvent,
        changeGameStep: _mapChangeGameStep,
        selectProduct: _mapSelectProduct,
      );

  Stream<GameState> _mapLoadEventToState(_LoadProductsGameEvent event) async* {
    final s = state;
    if (s is InitialGameState) {
      yield const GameState.loading();
      List<List<Product>>? products;
      products = _hiveService.getProducts();
      if (products?.isEmpty ?? true) {
        final response = await _repository.getProducts();
        if (response.isRight) {
          products = response.right;
          _hiveService.updateProducts(products);
        }
      }
      yield GameState.data(products: products!, currentStep: 1, totalStep: products.length);
    } else {
      yield const GameState.error();
    }
  }

  Stream<GameState> _mapSendGameResultEvent(_SendGameResultEvent event) async* {
    final s = state as DataGameState;
    final request = ResultGameRequest(bonus: s.bonus, likeIds: s.likeIds);
    debugPrint('bonus ${s.bonus}');
    debugPrint('product ids:');
    s.likeIds.forEach((e) => debugPrint('$e'));
    final response = await _repository.sendGameResult(request);
    if (response.isRight && response.right) {
      _hiveService.clearProducts();
      yield const GameState.initial();
    } else {
      yield const GameState.error();
    }
  }

  Stream<GameState> _mapChangeGameStep(_ChangeGameStepEvent event) async* {
    final s = state as DataGameState;
    _likesIds.add(s.currentLikeId!);
    final bonus = s.bonus;
    final currentStep = s.currentStep;
    yield s.copyWith(currentStep: currentStep + 1, likeIds: _likesIds, bonus: bonus + 2, currentLikeId: null);
  }

  Stream<GameState> _mapSelectProduct(_SelectProductEvent event) async* {
    final s = state as DataGameState;
    yield s.copyWith(currentLikeId: event.likeId);
  }
}
