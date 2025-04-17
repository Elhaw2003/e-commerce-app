import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/auth/login/data/models/login_model.dart';
import 'package:e_commerce_app/features/auth/login/data/repo/login_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo}) : super(LoginInitial());
  final LoginRepo loginRepo;
  void login({required String username,required String password})async{
    emit(LoginLoading());
    var result = await loginRepo.login(username: username, password: password);
    return result.fold(
            (l){
              emit(LoginFailure(errorMessage: l.message));
            },
            (r){
              emit(LoginSuccess(loginModel: r));
            }
    );
    }
}
