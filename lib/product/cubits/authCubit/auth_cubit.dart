import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> auth() async{
    emit(AuthLoading());

    Future.delayed(Duration(seconds: 1),(){
      emit(AuthSucces());
    });
  }
}
