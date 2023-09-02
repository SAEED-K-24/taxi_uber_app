import 'package:taxi_app/features/auth/domain/repositories/auth_repositories.dart';
import 'package:taxi_app/features/auth/domain/usecases/logout_case.dart';

class LogoutCaseImpl implements LogoutCase {
  LogoutCaseImpl(this.authRepositories);
  final AuthRepositories authRepositories;

  @override
  Future<void> execute() async {
    return await authRepositories.logoutRepository();
  }
}
