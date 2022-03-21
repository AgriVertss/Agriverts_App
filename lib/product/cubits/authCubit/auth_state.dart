part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthGoogleLoading extends AuthState {}
class AuthNativeLoading extends AuthState {}
class AuthSucces extends AuthState {}
class AuthError extends AuthState {}
