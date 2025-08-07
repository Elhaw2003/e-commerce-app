import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/auth/login/data/models/login_model.dart';
abstract class LoginRepo{
  Future<Either<Failure,LoginModel>> login({required String username,required String password});
}