import 'package:dartz/dartz.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';

abstract class UpdateUserAccountCase {
  Future<Unit> execute(User user);
}
