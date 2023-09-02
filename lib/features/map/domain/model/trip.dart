import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip{

  const factory Trip({
    String? id,
    String? fromCity,
    String? toCity,
    double? fromLat,
    double? fromLong,
    double? toLat,
    double? toLong,
    double? distance,
    double? timeOfTrip,
  }) = _Trip;

  factory Trip.fromJson(Map<String, Object?> json)
  => _$TripFromJson(json);

}


