import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/responses/product_response.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Product with _$Product {
  const Product._();

  const factory Product({
    required int productId,
    required String name,
    required String photoUrl,
  }) = _Product;

  factory Product.fromResponse(ProductResponse response) {
    return Product(
      productId: response.productId,
      name: response.name,
      photoUrl: response.photoUrl,
    );
  }
}
