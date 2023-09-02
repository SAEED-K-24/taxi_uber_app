import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';
import 'package:taxi_app/features/auth/presentation/state/auth_provider.dart';

final userStateNotifier = StateNotifierProvider<AuthNotifier,User>((ref) => AuthNotifier(ref));