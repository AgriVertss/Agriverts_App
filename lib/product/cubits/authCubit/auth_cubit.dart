import 'package:agriverts/core/services/authService/google_auth_service.dart';
import 'package:agriverts/core/services/authService/native_auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final GoogleAuthService _googleAuthService = GoogleAuthService();
  final NativeAuthService _nativeAuthService = NativeAuthService();

  Future<void> signInWithGoogle() async {
    emit(AuthGoogleLoading());
    var isSigned = await _googleAuthService.signInWithGoogle();
    if (isSigned) {
      emit(AuthLoginSucces());
    } else {
      emit(AuthError());
    }
  }

  Future<void> signInWithNative({required String email, required String password}) async {
    emit(AuthNativeLoading());
    var isSigned = await _nativeAuthService.nativeSignIn(email: email,password: password);
    if (isSigned) {
      emit(AuthLoginSucces());
    } else {
      emit(AuthError());
    }
  }
  Future<void> signUpWithNative({required String email, required String password}) async {
    emit(AuthNativeLoading());
    var isSigned = await _nativeAuthService.nativeSignUp(email: email,password: password);
    if (isSigned) {
      emit(AuthRegisterSucces());
    } else {
      emit(AuthError());
    }
  }

  Future<void> signOut() async{
   await _googleAuthService.signOutFromGoogle();
  }
}
