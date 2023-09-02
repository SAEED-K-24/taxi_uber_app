import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/failure.dart';
import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';
import 'package:taxi_app/features/auth/domain/usecases/login_case.dart';

class LoginCaseImpl implements LoginCase {
  LoginCaseImpl(this.authRepositories);
  final AuthRepositories authRepositories;

  @override
  Future<Either<Failure, String>> execute(String email, String password) async {
    return await authRepositories.loginRepository(email, password);
  }
}
