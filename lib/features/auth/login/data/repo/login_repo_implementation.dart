import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/api/end_points.dart';

import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';

import 'package:e_commerce_app/features/auth/login/data/models/login_model.dart';

import 'login_repo.dart';
import 'package:http/http.dart'as http;
class LoginRepoImplementation implements LoginRepo{
  @override
  Future<Either<Failure, LoginModel>> login({required String username,required String password}) async{
    try{
      var response = await http.post(
          Uri.parse(EndPoints.baseUrl + EndPoints.login),
          body: {
            "username": username,
            "password": password
          }
      );
      var bodyJson = jsonDecode(response.body);
      if(response.statusCode == 200){
        LoginModel loginModel = LoginModel.fromJson(bodyJson);
        return right(loginModel);
      }
      else {
        return left(ApiFailure(message: "username or password is incorrect"));
      }
    }
    on SocketException {
      return left(ApiFailure(message: AppTexts.noInternet));
    }
    catch (e) {
      return left(ApiFailure(message: AppTexts.errorOccurred));
    }
  }
}