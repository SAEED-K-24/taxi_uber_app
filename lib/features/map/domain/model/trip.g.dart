// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      id: json['id'] as String?,
      fromCity: json['fromCity'] as String?,
      toCity: json['toCity'] as String?,
      fromLat: (json['fromLat'] as num?)?.toDouble(),
      fromLong: (json['fromLong'] as num?)?.toDouble(),
      toLat: (json['toLat'] as num?)?.toDouble(),
      toLong: (json['toLong'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      timeOfTrip: (json['timeOfTrip'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'id': instance.id,
      'fromCity': instance.fromCity,
      'toCity': instance.toCity,
      'fromLat': instance.fromLat,
      'fromLong': instance.fromLong,
      'toLat': instance.toLat,
      'toLong': instance.toLong,
      'distance': instance.distance,
      'timeOfTrip': instance.timeOfTrip,
    };
