// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() sendGameResult,
    required TResult Function() changeGameStep,
    required TResult Function(int likeId) selectProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? sendGameResult,
    TResult? Function()? changeGameStep,
    TResult? Function(int likeId)? selectProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? sendGameResult,
    TResult Function()? changeGameStep,
    TResult Function(int likeId)? selectProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProductsGameEvent value) loadProducts,
    required TResult Function(_SendGameResultEvent value) sendGameResult,
    required TResult Function(_ChangeGameStepEvent value) changeGameStep,
    required TResult Function(_SelectProductEvent value) selectProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProductsGameEvent value)? loadProducts,
    TResult? Function(_SendGameResultEvent value)? sendGameResult,
    TResult? Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult? Function(_SelectProductEvent value)? selectProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProductsGameEvent value)? loadProducts,
    TResult Function(_SendGameResultEvent value)? sendGameResult,
    TResult Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult Function(_SelectProductEvent value)? selectProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProductsGameEventImplCopyWith<$Res> {
  factory _$$LoadProductsGameEventImplCopyWith(
          _$LoadProductsGameEventImpl value,
          $Res Function(_$LoadProductsGameEventImpl) then) =
      __$$LoadProductsGameEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProductsGameEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LoadProductsGameEventImpl>
    implements _$$LoadProductsGameEventImplCopyWith<$Res> {
  __$$LoadProductsGameEventImplCopyWithImpl(_$LoadProductsGameEventImpl _value,
      $Res Function(_$LoadProductsGameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadProductsGameEventImpl extends _LoadProductsGameEvent {
  const _$LoadProductsGameEventImpl() : super._();

  @override
  String toString() {
    return 'GameEvent.loadProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProductsGameEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() sendGameResult,
    required TResult Function() changeGameStep,
    required TResult Function(int likeId) selectProduct,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? sendGameResult,
    TResult? Function()? changeGameStep,
    TResult? Function(int likeId)? selectProduct,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? sendGameResult,
    TResult Function()? changeGameStep,
    TResult Function(int likeId)? selectProduct,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProductsGameEvent value) loadProducts,
    required TResult Function(_SendGameResultEvent value) sendGameResult,
    required TResult Function(_ChangeGameStepEvent value) changeGameStep,
    required TResult Function(_SelectProductEvent value) selectProduct,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProductsGameEvent value)? loadProducts,
    TResult? Function(_SendGameResultEvent value)? sendGameResult,
    TResult? Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult? Function(_SelectProductEvent value)? selectProduct,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProductsGameEvent value)? loadProducts,
    TResult Function(_SendGameResultEvent value)? sendGameResult,
    TResult Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult Function(_SelectProductEvent value)? selectProduct,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadProductsGameEvent extends GameEvent {
  const factory _LoadProductsGameEvent() = _$LoadProductsGameEventImpl;
  const _LoadProductsGameEvent._() : super._();
}

/// @nodoc
abstract class _$$SendGameResultEventImplCopyWith<$Res> {
  factory _$$SendGameResultEventImplCopyWith(_$SendGameResultEventImpl value,
          $Res Function(_$SendGameResultEventImpl) then) =
      __$$SendGameResultEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendGameResultEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SendGameResultEventImpl>
    implements _$$SendGameResultEventImplCopyWith<$Res> {
  __$$SendGameResultEventImplCopyWithImpl(_$SendGameResultEventImpl _value,
      $Res Function(_$SendGameResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendGameResultEventImpl extends _SendGameResultEvent {
  const _$SendGameResultEventImpl() : super._();

  @override
  String toString() {
    return 'GameEvent.sendGameResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendGameResultEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() sendGameResult,
    required TResult Function() changeGameStep,
    required TResult Function(int likeId) selectProduct,
  }) {
    return sendGameResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? sendGameResult,
    TResult? Function()? changeGameStep,
    TResult? Function(int likeId)? selectProduct,
  }) {
    return sendGameResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? sendGameResult,
    TResult Function()? changeGameStep,
    TResult Function(int likeId)? selectProduct,
    required TResult orElse(),
  }) {
    if (sendGameResult != null) {
      return sendGameResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProductsGameEvent value) loadProducts,
    required TResult Function(_SendGameResultEvent value) sendGameResult,
    required TResult Function(_ChangeGameStepEvent value) changeGameStep,
    required TResult Function(_SelectProductEvent value) selectProduct,
  }) {
    return sendGameResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProductsGameEvent value)? loadProducts,
    TResult? Function(_SendGameResultEvent value)? sendGameResult,
    TResult? Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult? Function(_SelectProductEvent value)? selectProduct,
  }) {
    return sendGameResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProductsGameEvent value)? loadProducts,
    TResult Function(_SendGameResultEvent value)? sendGameResult,
    TResult Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult Function(_SelectProductEvent value)? selectProduct,
    required TResult orElse(),
  }) {
    if (sendGameResult != null) {
      return sendGameResult(this);
    }
    return orElse();
  }
}

abstract class _SendGameResultEvent extends GameEvent {
  const factory _SendGameResultEvent() = _$SendGameResultEventImpl;
  const _SendGameResultEvent._() : super._();
}

/// @nodoc
abstract class _$$ChangeGameStepEventImplCopyWith<$Res> {
  factory _$$ChangeGameStepEventImplCopyWith(_$ChangeGameStepEventImpl value,
          $Res Function(_$ChangeGameStepEventImpl) then) =
      __$$ChangeGameStepEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeGameStepEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ChangeGameStepEventImpl>
    implements _$$ChangeGameStepEventImplCopyWith<$Res> {
  __$$ChangeGameStepEventImplCopyWithImpl(_$ChangeGameStepEventImpl _value,
      $Res Function(_$ChangeGameStepEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeGameStepEventImpl extends _ChangeGameStepEvent {
  const _$ChangeGameStepEventImpl() : super._();

  @override
  String toString() {
    return 'GameEvent.changeGameStep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeGameStepEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() sendGameResult,
    required TResult Function() changeGameStep,
    required TResult Function(int likeId) selectProduct,
  }) {
    return changeGameStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? sendGameResult,
    TResult? Function()? changeGameStep,
    TResult? Function(int likeId)? selectProduct,
  }) {
    return changeGameStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? sendGameResult,
    TResult Function()? changeGameStep,
    TResult Function(int likeId)? selectProduct,
    required TResult orElse(),
  }) {
    if (changeGameStep != null) {
      return changeGameStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProductsGameEvent value) loadProducts,
    required TResult Function(_SendGameResultEvent value) sendGameResult,
    required TResult Function(_ChangeGameStepEvent value) changeGameStep,
    required TResult Function(_SelectProductEvent value) selectProduct,
  }) {
    return changeGameStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProductsGameEvent value)? loadProducts,
    TResult? Function(_SendGameResultEvent value)? sendGameResult,
    TResult? Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult? Function(_SelectProductEvent value)? selectProduct,
  }) {
    return changeGameStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProductsGameEvent value)? loadProducts,
    TResult Function(_SendGameResultEvent value)? sendGameResult,
    TResult Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult Function(_SelectProductEvent value)? selectProduct,
    required TResult orElse(),
  }) {
    if (changeGameStep != null) {
      return changeGameStep(this);
    }
    return orElse();
  }
}

abstract class _ChangeGameStepEvent extends GameEvent {
  const factory _ChangeGameStepEvent() = _$ChangeGameStepEventImpl;
  const _ChangeGameStepEvent._() : super._();
}

/// @nodoc
abstract class _$$SelectProductEventImplCopyWith<$Res> {
  factory _$$SelectProductEventImplCopyWith(_$SelectProductEventImpl value,
          $Res Function(_$SelectProductEventImpl) then) =
      __$$SelectProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int likeId});
}

/// @nodoc
class __$$SelectProductEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SelectProductEventImpl>
    implements _$$SelectProductEventImplCopyWith<$Res> {
  __$$SelectProductEventImplCopyWithImpl(_$SelectProductEventImpl _value,
      $Res Function(_$SelectProductEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeId = null,
  }) {
    return _then(_$SelectProductEventImpl(
      null == likeId
          ? _value.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectProductEventImpl extends _SelectProductEvent {
  const _$SelectProductEventImpl(this.likeId) : super._();

  @override
  final int likeId;

  @override
  String toString() {
    return 'GameEvent.selectProduct(likeId: $likeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProductEventImpl &&
            (identical(other.likeId, likeId) || other.likeId == likeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likeId);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProductEventImplCopyWith<_$SelectProductEventImpl> get copyWith =>
      __$$SelectProductEventImplCopyWithImpl<_$SelectProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() sendGameResult,
    required TResult Function() changeGameStep,
    required TResult Function(int likeId) selectProduct,
  }) {
    return selectProduct(likeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? sendGameResult,
    TResult? Function()? changeGameStep,
    TResult? Function(int likeId)? selectProduct,
  }) {
    return selectProduct?.call(likeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? sendGameResult,
    TResult Function()? changeGameStep,
    TResult Function(int likeId)? selectProduct,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(likeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadProductsGameEvent value) loadProducts,
    required TResult Function(_SendGameResultEvent value) sendGameResult,
    required TResult Function(_ChangeGameStepEvent value) changeGameStep,
    required TResult Function(_SelectProductEvent value) selectProduct,
  }) {
    return selectProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadProductsGameEvent value)? loadProducts,
    TResult? Function(_SendGameResultEvent value)? sendGameResult,
    TResult? Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult? Function(_SelectProductEvent value)? selectProduct,
  }) {
    return selectProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadProductsGameEvent value)? loadProducts,
    TResult Function(_SendGameResultEvent value)? sendGameResult,
    TResult Function(_ChangeGameStepEvent value)? changeGameStep,
    TResult Function(_SelectProductEvent value)? selectProduct,
    required TResult orElse(),
  }) {
    if (selectProduct != null) {
      return selectProduct(this);
    }
    return orElse();
  }
}

abstract class _SelectProductEvent extends GameEvent {
  const factory _SelectProductEvent(final int likeId) =
      _$SelectProductEventImpl;
  const _SelectProductEvent._() : super._();

  int get likeId;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectProductEventImplCopyWith<_$SelectProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(LoadingGameState value) loading,
    required TResult Function(ErrorGameState value) error,
    required TResult Function(DataGameState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialGameState value)? initial,
    TResult? Function(LoadingGameState value)? loading,
    TResult? Function(ErrorGameState value)? error,
    TResult? Function(DataGameState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(LoadingGameState value)? loading,
    TResult Function(ErrorGameState value)? error,
    TResult Function(DataGameState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialGameStateImplCopyWith<$Res> {
  factory _$$InitialGameStateImplCopyWith(_$InitialGameStateImpl value,
          $Res Function(_$InitialGameStateImpl) then) =
      __$$InitialGameStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialGameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitialGameStateImpl>
    implements _$$InitialGameStateImplCopyWith<$Res> {
  __$$InitialGameStateImplCopyWithImpl(_$InitialGameStateImpl _value,
      $Res Function(_$InitialGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialGameStateImpl extends InitialGameState {
  const _$InitialGameStateImpl() : super._();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialGameStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(LoadingGameState value) loading,
    required TResult Function(ErrorGameState value) error,
    required TResult Function(DataGameState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialGameState value)? initial,
    TResult? Function(LoadingGameState value)? loading,
    TResult? Function(ErrorGameState value)? error,
    TResult? Function(DataGameState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(LoadingGameState value)? loading,
    TResult Function(ErrorGameState value)? error,
    TResult Function(DataGameState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialGameState extends GameState {
  const factory InitialGameState() = _$InitialGameStateImpl;
  const InitialGameState._() : super._();
}

/// @nodoc
abstract class _$$LoadingGameStateImplCopyWith<$Res> {
  factory _$$LoadingGameStateImplCopyWith(_$LoadingGameStateImpl value,
          $Res Function(_$LoadingGameStateImpl) then) =
      __$$LoadingGameStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$LoadingGameStateImpl>
    implements _$$LoadingGameStateImplCopyWith<$Res> {
  __$$LoadingGameStateImplCopyWithImpl(_$LoadingGameStateImpl _value,
      $Res Function(_$LoadingGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingGameStateImpl extends LoadingGameState {
  const _$LoadingGameStateImpl() : super._();

  @override
  String toString() {
    return 'GameState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingGameStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(LoadingGameState value) loading,
    required TResult Function(ErrorGameState value) error,
    required TResult Function(DataGameState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialGameState value)? initial,
    TResult? Function(LoadingGameState value)? loading,
    TResult? Function(ErrorGameState value)? error,
    TResult? Function(DataGameState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(LoadingGameState value)? loading,
    TResult Function(ErrorGameState value)? error,
    TResult Function(DataGameState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingGameState extends GameState {
  const factory LoadingGameState() = _$LoadingGameStateImpl;
  const LoadingGameState._() : super._();
}

/// @nodoc
abstract class _$$ErrorGameStateImplCopyWith<$Res> {
  factory _$$ErrorGameStateImplCopyWith(_$ErrorGameStateImpl value,
          $Res Function(_$ErrorGameStateImpl) then) =
      __$$ErrorGameStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorGameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$ErrorGameStateImpl>
    implements _$$ErrorGameStateImplCopyWith<$Res> {
  __$$ErrorGameStateImplCopyWithImpl(
      _$ErrorGameStateImpl _value, $Res Function(_$ErrorGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorGameStateImpl extends ErrorGameState {
  const _$ErrorGameStateImpl() : super._();

  @override
  String toString() {
    return 'GameState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorGameStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)
        data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(LoadingGameState value) loading,
    required TResult Function(ErrorGameState value) error,
    required TResult Function(DataGameState value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialGameState value)? initial,
    TResult? Function(LoadingGameState value)? loading,
    TResult? Function(ErrorGameState value)? error,
    TResult? Function(DataGameState value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(LoadingGameState value)? loading,
    TResult Function(ErrorGameState value)? error,
    TResult Function(DataGameState value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorGameState extends GameState {
  const factory ErrorGameState() = _$ErrorGameStateImpl;
  const ErrorGameState._() : super._();
}

/// @nodoc
abstract class _$$DataGameStateImplCopyWith<$Res> {
  factory _$$DataGameStateImplCopyWith(
          _$DataGameStateImpl value, $Res Function(_$DataGameStateImpl) then) =
      __$$DataGameStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<List<Product>> products,
      int currentStep,
      int totalStep,
      int bonus,
      List<int> likeIds,
      int? currentLikeId});
}

/// @nodoc
class __$$DataGameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$DataGameStateImpl>
    implements _$$DataGameStateImplCopyWith<$Res> {
  __$$DataGameStateImplCopyWithImpl(
      _$DataGameStateImpl _value, $Res Function(_$DataGameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? currentStep = null,
    Object? totalStep = null,
    Object? bonus = null,
    Object? likeIds = null,
    Object? currentLikeId = freezed,
  }) {
    return _then(_$DataGameStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<List<Product>>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      totalStep: null == totalStep
          ? _value.totalStep
          : totalStep // ignore: cast_nullable_to_non_nullable
              as int,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
      likeIds: null == likeIds
          ? _value._likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      currentLikeId: freezed == currentLikeId
          ? _value.currentLikeId
          : currentLikeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DataGameStateImpl extends DataGameState {
  const _$DataGameStateImpl(
      {required final List<List<Product>> products,
      required this.currentStep,
      required this.totalStep,
      this.bonus = 0,
      final List<int> likeIds = const [],
      this.currentLikeId})
      : _products = products,
        _likeIds = likeIds,
        super._();

  final List<List<Product>> _products;
  @override
  List<List<Product>> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int currentStep;
  @override
  final int totalStep;
  @override
  @JsonKey()
  final int bonus;
  final List<int> _likeIds;
  @override
  @JsonKey()
  List<int> get likeIds {
    if (_likeIds is EqualUnmodifiableListView) return _likeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeIds);
  }

  @override
  final int? currentLikeId;

  @override
  String toString() {
    return 'GameState.data(products: $products, currentStep: $currentStep, totalStep: $totalStep, bonus: $bonus, likeIds: $likeIds, currentLikeId: $currentLikeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGameStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.totalStep, totalStep) ||
                other.totalStep == totalStep) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            const DeepCollectionEquality().equals(other._likeIds, _likeIds) &&
            (identical(other.currentLikeId, currentLikeId) ||
                other.currentLikeId == currentLikeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      currentStep,
      totalStep,
      bonus,
      const DeepCollectionEquality().hash(_likeIds),
      currentLikeId);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGameStateImplCopyWith<_$DataGameStateImpl> get copyWith =>
      __$$DataGameStateImplCopyWithImpl<_$DataGameStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)
        data,
  }) {
    return data(
        products, currentStep, totalStep, bonus, likeIds, currentLikeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
  }) {
    return data?.call(
        products, currentStep, totalStep, bonus, likeIds, currentLikeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<List<Product>> products, int currentStep,
            int totalStep, int bonus, List<int> likeIds, int? currentLikeId)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          products, currentStep, totalStep, bonus, likeIds, currentLikeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(LoadingGameState value) loading,
    required TResult Function(ErrorGameState value) error,
    required TResult Function(DataGameState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialGameState value)? initial,
    TResult? Function(LoadingGameState value)? loading,
    TResult? Function(ErrorGameState value)? error,
    TResult? Function(DataGameState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(LoadingGameState value)? loading,
    TResult Function(ErrorGameState value)? error,
    TResult Function(DataGameState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataGameState extends GameState {
  const factory DataGameState(
      {required final List<List<Product>> products,
      required final int currentStep,
      required final int totalStep,
      final int bonus,
      final List<int> likeIds,
      final int? currentLikeId}) = _$DataGameStateImpl;
  const DataGameState._() : super._();

  List<List<Product>> get products;
  int get currentStep;
  int get totalStep;
  int get bonus;
  List<int> get likeIds;
  int? get currentLikeId;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGameStateImplCopyWith<_$DataGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
