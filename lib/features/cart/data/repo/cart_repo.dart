import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';

import '../../../home_widget/data/models/product_model.dart';
import '../models/cart_model.dart';

abstract class CartRepo {
  Future<Either<Failure,CartModel>> getCart();
  Future<Either<Failure,CartModel>> addToCart({required String date,required ProductModel productModel,required int quantity});
}