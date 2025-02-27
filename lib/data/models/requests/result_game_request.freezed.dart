// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_game_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultGameRequest _$ResultGameRequestFromJson(Map<String, dynamic> json) {
  return _ResultGameRequest.fromJson(json);
}

/// @nodoc
mixin _$ResultGameRequest {
  int get bonus => throw _privateConstructorUsedError;
  List<int> get likeIds => throw _privateConstructorUsedError;

  /// Serializes this ResultGameRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultGameRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultGameRequestCopyWith<ResultGameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultGameRequestCopyWith<$Res> {
  factory $ResultGameRequestCopyWith(
          ResultGameRequest value, $Res Function(ResultGameRequest) then) =
      _$ResultGameRequestCopyWithImpl<$Res, ResultGameRequest>;
  @useResult
  $Res call({int bonus, List<int> likeIds});
}

/// @nodoc
class _$ResultGameRequestCopyWithImpl<$Res, $Val extends ResultGameRequest>
    implements $ResultGameRequestCopyWith<$Res> {
  _$ResultGameRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultGameRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? likeIds = null,
  }) {
    return _then(_value.copyWith(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
      likeIds: null == likeIds
          ? _value.likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultGameRequestImplCopyWith<$Res>
    implements $ResultGameRequestCopyWith<$Res> {
  factory _$$ResultGameRequestImplCopyWith(_$ResultGameRequestImpl value,
          $Res Function(_$ResultGameRequestImpl) then) =
      __$$ResultGameRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bonus, List<int> likeIds});
}

/// @nodoc
class __$$ResultGameRequestImplCopyWithImpl<$Res>
    extends _$ResultGameRequestCopyWithImpl<$Res, _$ResultGameRequestImpl>
    implements _$$ResultGameRequestImplCopyWith<$Res> {
  __$$ResultGameRequestImplCopyWithImpl(_$ResultGameRequestImpl _value,
      $Res Function(_$ResultGameRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultGameRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? likeIds = null,
  }) {
    return _then(_$ResultGameRequestImpl(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
      likeIds: null == likeIds
          ? _value._likeIds
          : likeIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultGameRequestImpl implements _ResultGameRequest {
  const _$ResultGameRequestImpl(
      {required this.bonus, required final List<int> likeIds})
      : _likeIds = likeIds;

  factory _$ResultGameRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultGameRequestImplFromJson(json);

  @override
  final int bonus;
  final List<int> _likeIds;
  @override
  List<int> get likeIds {
    if (_likeIds is EqualUnmodifiableListView) return _likeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeIds);
  }

  @override
  String toString() {
    return 'ResultGameRequest(bonus: $bonus, likeIds: $likeIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultGameRequestImpl &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            const DeepCollectionEquality().equals(other._likeIds, _likeIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bonus, const DeepCollectionEquality().hash(_likeIds));

  /// Create a copy of ResultGameRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultGameRequestImplCopyWith<_$ResultGameRequestImpl> get copyWith =>
      __$$ResultGameRequestImplCopyWithImpl<_$ResultGameRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultGameRequestImplToJson(
      this,
    );
  }
}

abstract class _ResultGameRequest implements ResultGameRequest {
  const factory _ResultGameRequest(
      {required final int bonus,
      required final List<int> likeIds}) = _$ResultGameRequestImpl;

  factory _ResultGameRequest.fromJson(Map<String, dynamic> json) =
      _$ResultGameRequestImpl.fromJson;

  @override
  int get bonus;
  @override
  List<int> get likeIds;

  /// Create a copy of ResultGameRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultGameRequestImplCopyWith<_$ResultGameRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
