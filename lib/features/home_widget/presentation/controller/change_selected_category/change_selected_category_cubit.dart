import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_selected_category_state.dart';

class ChangeSelectedCategoryCubit extends Cubit<ChangeSelectedCategoryState> {
  ChangeSelectedCategoryCubit() : super(ChangeSelectedCategoryInitial());
  int index = 0;
  changeCategory({required int index}){
    this.index = index;
    emit(ChangeSelectedCategorySuccess());
  }
}
