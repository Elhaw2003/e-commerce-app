import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/api/end_points.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/features/cart/data/repo/cart_repo.dart';
import 'package:http/http.dart' as http;

import '../../../../core/utilities/app_texts.dart';
import '../../../home_widget/data/models/product_model.dart';
class CartRepoImplementation implements CartRepo {
  @override
  Future<Either<Failure, CartModel>> getCart() async {
    try {
      var response = await http.get(
          Uri.parse("${EndPoints.baseUrl + EndPoints.carts}/user/2"));
      var bodyJson = jsonDecode(response.body);
      if (response.statusCode == 200) {
        CartModel cartModel = CartModel.fromJson(bodyJson);
        return right(cartModel);
      }
      else {
        return left(ApiFailure(message: AppTexts.errorOccurred));
      }
    }
    catch (e) {
      return left(ApiFailure(message: AppTexts.errorOccurred));
    }
  }

  @override
  Future<Either<Failure, CartModel>> addToCart({
    required String date,
    required ProductModel productModel,
    required int quantity,
  }) async {
    try {
      var response = await http.put(
        Uri.parse("${EndPoints.baseUrl + EndPoints.carts}/3"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "userId": 2,
          "date": date,
          "products": [
            {
              "productId": productModel.id,
              "quantity": quantity,
            }
          ]
        }),
      );

      var bodyJson = jsonDecode(response.body);

      if (response.statusCode == 200) {
        CartModel cartModel = CartModel.fromJson(bodyJson);
        return right(cartModel);
      } else {
        return left(ApiFailure(message: AppTexts.errorOccurred));
      }
    } catch (e) {
      log(e.toString());
      return left(ApiFailure(message: e.toString()));
    }
  }
}