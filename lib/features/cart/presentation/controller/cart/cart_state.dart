part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class CartLoading extends CartState {}
final class CartSuccessGettingCart extends CartState {
  final CartModel cartModel;
  CartSuccessGettingCart({required this.cartModel});
}
final class CartFailureGettingCart extends CartState {
  final String message;
  CartFailureGettingCart({required this.message});
}
final class CartSuccessAddingToCart extends CartState {
  final CartModel cartModel;
  CartSuccessAddingToCart({required this.cartModel});
}
final class CartFailureAddingToCart extends CartState {
  final String message;
  CartFailureAddingToCart({required this.message});
}
