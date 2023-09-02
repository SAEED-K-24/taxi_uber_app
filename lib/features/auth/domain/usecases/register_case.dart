import 'package:dartz/dartz.dart';
import 'package:taxi_app/core/core.dart';

abstract class RegisterCase {
  Future<Either<Failure, String>> execute(
      String verificationID, String otp);
}
