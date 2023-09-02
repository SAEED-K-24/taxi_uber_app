import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/core.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';

abstract class AuthRepositories {
  Future<Either<Failure,String>> loginRepository(String email,String password);
  Future<Either<Failure,String>> registerRepository(String email,String password);
  Future<void> logoutRepository();
  Future<Unit> createUserAccountRepository(User user);
  Future<Unit> updateUserAccountRepository(User user);
  Future<Either<UserNotFoundFailure,User>> getUserAccountRepository(String uid);
}
