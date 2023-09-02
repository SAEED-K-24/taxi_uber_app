import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taxi_app/features/auth/data/repositories/auth_repositories_impl.dart';
import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';

final authProvider =
    Provider<AuthRepositories>((ref) => AuthRepositoriesImpl());
