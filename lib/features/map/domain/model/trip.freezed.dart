// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String? get id => throw _privateConstructorUsedError;
  String? get fromCity => throw _privateConstructorUsedError;
  String? get toCity => throw _privateConstructorUsedError;
  double? get fromLat => throw _privateConstructorUsedError;
  double? get fromLong => throw _privateConstructorUsedError;
  double? get toLat => throw _privateConstructorUsedError;
  double? get toLong => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get timeOfTrip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String? id,
      String? fromCity,
      String? toCity,
      double? fromLat,
      double? fromLong,
      double? toLat,
      double? toLong,
      double? distance,
      double? timeOfTrip});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromCity = freezed,
    Object? toCity = freezed,
    Object? fromLat = freezed,
    Object? fromLong = freezed,
    Object? toLat = freezed,
    Object? toLong = freezed,
    Object? distance = freezed,
    Object? timeOfTrip = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromCity: freezed == fromCity
          ? _value.fromCity
          : fromCity // ignore: cast_nullable_to_non_nullable
              as String?,
      toCity: freezed == toCity
          ? _value.toCity
          : toCity // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLat: freezed == fromLat
          ? _value.fromLat
          : fromLat // ignore: cast_nullable_to_non_nullable
              as double?,
      fromLong: freezed == fromLong
          ? _value.fromLong
          : fromLong // ignore: cast_nullable_to_non_nullable
              as double?,
      toLat: freezed == toLat
          ? _value.toLat
          : toLat // ignore: cast_nullable_to_non_nullable
              as double?,
      toLong: freezed == toLong
          ? _value.toLong
          : toLong // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      timeOfTrip: freezed == timeOfTrip
          ? _value.timeOfTrip
          : timeOfTrip // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? fromCity,
      String? toCity,
      double? fromLat,
      double? fromLong,
      double? toLat,
      double? toLong,
      double? distance,
      double? timeOfTrip});
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res, _$_Trip>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromCity = freezed,
    Object? toCity = freezed,
    Object? fromLat = freezed,
    Object? fromLong = freezed,
    Object? toLat = freezed,
    Object? toLong = freezed,
    Object? distance = freezed,
    Object? timeOfTrip = freezed,
  }) {
    return _then(_$_Trip(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromCity: freezed == fromCity
          ? _value.fromCity
          : fromCity // ignore: cast_nullable_to_non_nullable
              as String?,
      toCity: freezed == toCity
          ? _value.toCity
          : toCity // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLat: freezed == fromLat
          ? _value.fromLat
          : fromLat // ignore: cast_nullable_to_non_nullable
              as double?,
      fromLong: freezed == fromLong
          ? _value.fromLong
          : fromLong // ignore: cast_nullable_to_non_nullable
              as double?,
      toLat: freezed == toLat
          ? _value.toLat
          : toLat // ignore: cast_nullable_to_non_nullable
              as double?,
      toLong: freezed == toLong
          ? _value.toLong
          : toLong // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      timeOfTrip: freezed == timeOfTrip
          ? _value.timeOfTrip
          : timeOfTrip // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trip implements _Trip {
  const _$_Trip(
      {this.id,
      this.fromCity,
      this.toCity,
      this.fromLat,
      this.fromLong,
      this.toLat,
      this.toLong,
      this.distance,
      this.timeOfTrip});

  factory _$_Trip.fromJson(Map<String, dynamic> json) => _$$_TripFromJson(json);

  @override
  final String? id;
  @override
  final String? fromCity;
  @override
  final String? toCity;
  @override
  final double? fromLat;
  @override
  final double? fromLong;
  @override
  final double? toLat;
  @override
  final double? toLong;
  @override
  final double? distance;
  @override
  final double? timeOfTrip;

  @override
  String toString() {
    return 'Trip(id: $id, fromCity: $fromCity, toCity: $toCity, fromLat: $fromLat, fromLong: $fromLong, toLat: $toLat, toLong: $toLong, distance: $distance, timeOfTrip: $timeOfTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromCity, fromCity) ||
                other.fromCity == fromCity) &&
            (identical(other.toCity, toCity) || other.toCity == toCity) &&
            (identical(other.fromLat, fromLat) || other.fromLat == fromLat) &&
            (identical(other.fromLong, fromLong) ||
                other.fromLong == fromLong) &&
            (identical(other.toLat, toLat) || other.toLat == toLat) &&
            (identical(other.toLong, toLong) || other.toLong == toLong) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.timeOfTrip, timeOfTrip) ||
                other.timeOfTrip == timeOfTrip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fromCity, toCity, fromLat,
      fromLong, toLat, toLong, distance, timeOfTrip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {final String? id,
      final String? fromCity,
      final String? toCity,
      final double? fromLat,
      final double? fromLong,
      final double? toLat,
      final double? toLong,
      final double? distance,
      final double? timeOfTrip}) = _$_Trip;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$_Trip.fromJson;

  @override
  String? get id;
  @override
  String? get fromCity;
  @override
  String? get toCity;
  @override
  double? get fromLat;
  @override
  double? get fromLong;
  @override
  double? get toLat;
  @override
  double? get toLong;
  @override
  double? get distance;
  @override
  double? get timeOfTrip;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
