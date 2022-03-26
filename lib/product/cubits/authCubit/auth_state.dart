part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthGoogleLoading extends AuthState {}
class AuthNativeLoading extends AuthState {}
class AuthLoginSucces extends AuthState {}
class AuthRegisterSucces extends AuthState {}
class AuthError extends AuthState {}
class AuthEmptyFieldError extends AuthState {}
