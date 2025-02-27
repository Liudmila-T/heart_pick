import 'package:either_dart/either.dart';
import 'package:heart_pick/data/models/requests/result_game_request.dart';
import 'package:heart_pick/domain/entities/product.dart';

import '../../data/error/failure.dart';

abstract class AppRepository {
  Future<Either<AppFailure, List<List<Product>>>> getProducts();
  Future<Either<AppFailure, bool>> sendGameResult(ResultGameRequest request);
}
