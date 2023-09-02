import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/core.dart';
import 'package:taxi_app/features/auth/data/datasources/global/auth_data.dart';
import 'package:taxi_app/features/auth/data/datasources/global/firestore_data.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';
import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';

class AuthRepositoriesImpl extends AuthRepositories {
  @override
  Future<Unit> createUserAccountRepository(User user) async {
    await FirestoreHelper.firestoreHelper.addNewUserToFirestore(user);
    return unit;
  }

  @override
  Future<Either<UserNotFoundFailure, User>> getUserAccountRepository(
      String uid) async {
    User? user =
        await FirestoreHelper.firestoreHelper.getUsersFromFirestore(uid);
    if (user == null) {
      return Left(UserNotFoundFailure());
    }
    return Right(user);
  }

  @override
  Future<Either<Failure, String>> loginRepository(
      String email, String password) async {
    try {
      String? uid = await FireAuthHelper.fireAuthHelper.login(email, password);
      return Right(uid!);
    } on UserNotFoundException {
      return Left(UserNotFoundFailure());
    } on PasswordIsWrongException {
      return Left(PasswordIsWrongFailure());
    }
  }

  @override
  Future<void> logoutRepository() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Unit> updateUserAccountRepository(User user) {
    // TODO: implement updateUserAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> registerRepository(
      String email, String password) async {
    try {
      String? uid =
          await FireAuthHelper.fireAuthHelper.register(email, password);
      return Right(uid!);
    } on EmailIsAlreadyExistsException {
      return Left(EmailIsAlreadyExistsFailure());
    } on PasswordIsWeakException {
      return Left(PasswordIsWeakFailure());
    }
  }
}
