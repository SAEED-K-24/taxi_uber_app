import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/core.dart';

abstract class LoginCase {
  Future<Either<Failure, String>> execute(String email, String password);
}
