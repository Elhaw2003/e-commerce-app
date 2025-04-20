part of 'categories_cubit.dart';

@immutable
sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}

final class CategoriesSuccess extends CategoriesState {
  final List<String> categories;
  CategoriesSuccess({required this.categories});
}

final class CategoriesLoading extends CategoriesState {}

final class CategoriesFailure extends CategoriesState {
  final String message;
  CategoriesFailure({required this.message});
}