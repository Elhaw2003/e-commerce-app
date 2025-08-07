part of 'change_selected_category_cubit.dart';

@immutable
sealed class ChangeSelectedCategoryState {}

final class ChangeSelectedCategoryInitial extends ChangeSelectedCategoryState {}
final class ChangeSelectedCategorySuccess extends ChangeSelectedCategoryState {}
