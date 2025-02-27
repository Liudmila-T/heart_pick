import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data/datasourse/local/hive_database.dart';
import '../../data/models/responses/product_response.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Product with _$Product {
  const Product._();

  @HiveType(typeId: HiveAdapterId.product, adapterName: 'HiveProductAdapter')
  const factory Product({
    @HiveField(0) required int productId,
    @HiveField(1) required String name,
    @HiveField(2) required String photoUrl,
  }) = _Product;

  factory Product.fromResponse(ProductResponse response) {
    return Product(
      productId: response.productId,
      name: response.name,
      photoUrl: response.photoUrl,
    );
  }
}
