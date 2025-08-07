import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/home_widget/data/home_repo/home_repo.dart';
import 'package:meta/meta.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required this.homeRepo}) : super(CategoriesInitial());
  final HomeRepo homeRepo;
  getCategories() async {
    emit(CategoriesLoading());
    var result = await homeRepo.getCategories();
      result.fold((l) => emit(CategoriesFailure(message: l.message)),
              (r) => emit(CategoriesSuccess(categories: r)),
      );
  }
}
