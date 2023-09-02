import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/core.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';

abstract class GetUserAccountCase {
  Future<Either<UserNotFoundFailure, User>> execute(String uid);
}
