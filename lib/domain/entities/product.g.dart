// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveProductAdapter extends TypeAdapter<_$ProductImpl> {
  @override
  final int typeId = 0;

  @override
  _$ProductImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ProductImpl(
      productId: fields[0] as int,
      name: fields[1] as String,
      photoUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ProductImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.photoUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      productId: (json['product_id'] as num).toInt(),
      name: json['name'] as String,
      photoUrl: json['photo_url'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'photo_url': instance.photoUrl,
    };
