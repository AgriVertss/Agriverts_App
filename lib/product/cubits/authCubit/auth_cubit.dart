import 'package:agriverts/core/services/authService/google_auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final GoogleAuthService _googleAuthService = GoogleAuthService();

  Future<void> auth() async {
    emit(AuthLoading());
    var isSigned = await _googleAuthService.signInWithGoogle();
    if (isSigned) {
      emit(AuthSucces());
    } else {
      emit(AuthError());
    }
  }
}
