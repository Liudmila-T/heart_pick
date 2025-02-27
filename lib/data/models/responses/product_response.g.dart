// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      productId: (json['productId'] as num).toInt(),
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
    };
