import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:heart_pick/data/models/requests/result_game_request.dart';

import '../../models/responses/product_response.dart';
import '../../network_client.dart';

abstract class RestApi {
  Future<List<List<ProductResponse>>> products();

  Future<bool> sendGameResult(ResultGameRequest request);
}

class RestApiImpl implements RestApi {
  RestApiImpl({required NetworkClient networkClient}) : dio = networkClient.dio;

  final Dio dio;

  @override
  Future<List<List<ProductResponse>>> products() async {
    final response = await dio.get('/game/');

    if (response.data != null) {
      final List<dynamic> jsonData = response.data;

      final productList = jsonData.map((list) {
        return (list as List).map((item) => ProductResponse.fromJson(item as Map<String, dynamic>)).toList();
      }).toList();

      if (productList.isNotEmpty) {
        return productList;
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  @override
  Future<bool> sendGameResult(ResultGameRequest request) async {
    final response = await dio.post('/game/',
        data: jsonEncode(
          {
            'bonus': request.bonus,
            'likeIds': request.likeIds,
          },
        ));
    if (response.data != null) {
      return response.data["message"] == 'Результати збережені';
    } else {
      return false;
    }
  }
}
