// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_game_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultGameRequestImpl _$$ResultGameRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultGameRequestImpl(
      bonus: (json['bonus'] as num).toInt(),
      likeIds: (json['likeIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ResultGameRequestImplToJson(
        _$ResultGameRequestImpl instance) =>
    <String, dynamic>{
      'bonus': instance.bonus,
      'likeIds': instance.likeIds,
    };
