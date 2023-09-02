import 'package:dartz/dartz.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';
import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';
import 'package:taxi_app/features/auth/domain/usecases/update_user_account_case.dart';

class UpdateUserAccountCaseImpl implements UpdateUserAccountCase {
  UpdateUserAccountCaseImpl(this.authRepositories);
  final AuthRepositories authRepositories;

  @override
  Future<Unit> execute(User user) async {
    return await authRepositories.updateUserAccountRepository(user);
  }
}
