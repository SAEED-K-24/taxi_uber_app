import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taxi_app/features/auth/data/repositories/module.dart';
import 'package:taxi_app/features/auth/domain/usecases/usercases.dart';

final loginProvider =
    Provider<LoginCase>((ref) => LoginCaseImpl(ref.read(authProvider)));
final registerProvider =
    Provider<RegisterCase>((ref) => RegisterCaseImpl(ref.read(authProvider)));
final createUserAccountProvider = Provider<CreateUserAccountCase>(
    (ref) => CreateUserAccountCaseImpl(ref.read(authProvider)));
final updateUserAccountProvider = Provider<UpdateUserAccountCase>(
    (ref) => UpdateUserAccountCaseImpl(ref.read(authProvider)));
final getUserAccountProvider = Provider<GetUserAccountCase>(
    (ref) => GetUserAccountCaseImpl(ref.read(authProvider)));
final logutUserAccountProvider =
    Provider<LogoutCase>((ref) => LogoutCaseImpl(ref.read(authProvider)));
