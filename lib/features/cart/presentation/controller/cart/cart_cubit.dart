import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/features/cart/data/repo/cart_repo.dart';
import 'package:meta/meta.dart';

import '../../../../home_widget/data/models/product_model.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit({required this.cartRepo}) : super(CartInitial());
  final CartRepo cartRepo;
  getCart()async{
    emit(CartLoading());
    var result = await cartRepo.getCart();
    result.fold(
        (l){
          emit(CartFailureGettingCart(message: l.message));
        },
        (r){
          emit(CartSuccessGettingCart(cartModel: r));
        }
    );
  }
  addToCart({required ProductModel productModel,required int quantity})async{
    emit(CartLoading());
    DateTime dateTime = DateTime.now();
    var result = await cartRepo.addToCart(date: dateTime.toString(), productModel: productModel, quantity: quantity);
    result.fold(
        (l){
          emit(CartFailureAddingToCart(message: l.message));
        },
        (r){
          emit(CartSuccessAddingToCart(cartModel: r));
        }
    );
  }
}
