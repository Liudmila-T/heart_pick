import 'package:either_dart/either.dart';
import 'package:heart_pick/data/error/failure.dart';
import 'package:heart_pick/data/models/requests/result_game_request.dart';
import 'package:heart_pick/domain/entities/product.dart';

import '../../domain/repositories/app_repository.dart';
import '../datasourse/remote/rest_api.dart';

class AppRepositoryImpl extends AppRepository {
  AppRepositoryImpl({
    required RestApi restApi,
  }) : _restApi = restApi;

  final RestApi _restApi;

  @override
  Future<Either<AppFailure, List<List<Product>>>> getProducts() async {
    final products = await _restApi.products();
    if (products.isNotEmpty) {
      return Right(products.map((pair) => pair.map((item) => Product.fromResponse(item)).toList()).toList());
    } else {
      return Left(RemoteFailure());
    }
  }

  @override
  Future<Either<AppFailure, bool>> sendGameResult(ResultGameRequest request) async {
    final bool isSuccess = await _restApi.sendGameResult(request);
    if (isSuccess) {
      return const Right(true);
    } else {
      return Left(RemoteFailure());
    }
  }
}
