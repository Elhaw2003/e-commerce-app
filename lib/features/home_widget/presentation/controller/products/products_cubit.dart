import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/home_widget/data/home_repo/home_repo.dart';
import 'package:e_commerce_app/features/home_widget/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.homeRepo}) : super(ProductsInitial());
  final HomeRepo homeRepo;
  getProducts()async{
    emit(ProductsLoading());
    var result =await homeRepo.getProducts();
    return result.fold(
            (l){
              emit(ProductsFailure(errorMessage: l.message));
            },
        (r){
           emit(ProductsSuccess(products: r));
        }
    );
  }
}
