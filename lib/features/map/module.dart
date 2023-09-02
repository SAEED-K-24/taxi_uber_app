import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taxi_app/features/map/map.dart';
import 'domain/model/trip.dart';

final tripProvider = StateNotifierProvider<TripProvider,Trip>((ref) => TripProvider());