import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import '../../domain/model/trip.dart';

class TripProvider extends StateNotifier<Trip> {
  TripProvider()
      : super(const Trip()) {
    mapController = MapController.withUserPosition(
      trackUserLocation: const UserTrackingOption(
        enableTracking: true,
        unFollowUser: false,
      ),
    );
  }

  var mapController;

  drawRoad(String city, double toLat, double toLong) async {
    GeoPoint fromLocation = await mapController.myLocation();
    List<Placemark> placemarks = await placemarkFromCoordinates(
        fromLocation.latitude, fromLocation.longitude);
    GeoPoint toLocation = GeoPoint(latitude: toLat, longitude: toLong);
    RoadInfo roadInfo = await mapController.drawRoad(
      fromLocation,
      toLocation,
      roadType: RoadType.car,
      roadOption: const RoadOption(
        roadWidth: 10,
        roadColor: Colors.blue,
        zoomInto: true,
      ),
    );
    state = state.copyWith(
      distance: roadInfo.distance!.toPrecision(2),
      timeOfTrip: roadInfo.duration?.toPrecision(2),
      toCity: city,
      fromCity: placemarks[0].name,
      fromLat: fromLocation.latitude,
      fromLong: fromLocation.longitude,
      toLat: toLat,
      toLong: toLong,
    );
  }
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}
