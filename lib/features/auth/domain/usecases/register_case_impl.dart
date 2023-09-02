import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/core.dart';
import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';
import 'package:taxi_app/features/auth/domain/usecases/register_case.dart';

class RegisterCaseImpl implements RegisterCase {
  RegisterCaseImpl(this.authRepositories);
  final AuthRepositories authRepositories;

  @override
  Future<Either<Failure, String>> execute(
      String email, String password) async {
    return await authRepositories.registerRepository(email, password);
  }
}
