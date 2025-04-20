import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/api/end_points.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/features/home_widget/data/home_repo/home_repo.dart';
import 'package:e_commerce_app/features/home_widget/data/models/product_model.dart';
import 'package:http/http.dart' as http;
class HomeRepoImplementation implements HomeRepo{
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async{
    try{
      var response = await http.get(Uri.parse(EndPoints.baseUrl + EndPoints.products));
      var bodyJson = jsonDecode(response.body);
      if(response.statusCode == 200){
        List<ProductModel> products = (bodyJson as List).map((e)=>ProductModel.fromJson(e)).toList();
        return right(products);
      }
      else{
        return left(ApiFailure(message: AppTexts.errorOccurred));
      }
    }on SocketException{
      return left(ApiFailure(message: AppTexts.noInternet));
    }
    catch (e){
      log(e.toString());
      return left(ApiFailure(message: AppTexts.errorOccurred));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getProductCategory({required String category}) async{
    try{
      var response = await http.get(Uri.parse("${EndPoints.baseUrl + EndPoints.productCategory}/$category"));
      var bodyJson = jsonDecode(response.body);
      if(response.statusCode == 200){
        List<ProductModel> categories = (bodyJson as List).map((e)=>ProductModel.fromJson(e)).toList();
        return right(categories);
      }
      else{
        return left(ApiFailure(message: AppTexts.errorOccurred));
      }
    }
    catch (e){
      return left(ApiFailure(message: AppTexts.errorOccurred));
    }
  }
  @override
  Future<Either<Failure, List<String>>> getCategories() async{
    try{
      var response = await http.get(Uri.parse(EndPoints.baseUrl + EndPoints.categories));
      var bodyJson = jsonDecode(response.body);
      if(response.statusCode == 200){
        List<String> categories = List<String>.from(bodyJson);
        return right(categories);
      }
      else{
        return left(ApiFailure(message: AppTexts.errorOccurred));
      }
    }
    catch (e){
      return left(ApiFailure(message: AppTexts.errorOccurred));
    }
  }

}