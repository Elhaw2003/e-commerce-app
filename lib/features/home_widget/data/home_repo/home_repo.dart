import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/home_widget/data/models/product_model.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<ProductModel>>> getProducts();
  // Future<Either<Failure,List<CategoryModel>>> getCategories();
}