import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/failure.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';
import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';
import 'package:taxi_app/features/auth/domain/usecases/get_user_account_case.dart';

class GetUserAccountCaseImpl implements GetUserAccountCase {
  GetUserAccountCaseImpl(this.authRepositories);
  final AuthRepositories authRepositories;

  @override
  Future<Either<UserNotFoundFailure, User>> execute(String uid) async {
    return await authRepositories.getUserAccountRepository(uid);
  }
}
