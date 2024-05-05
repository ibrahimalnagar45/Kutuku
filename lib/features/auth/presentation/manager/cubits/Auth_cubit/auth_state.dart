part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthLoginInitial extends AuthState {}

final class AuthLoginLoading extends AuthState {}

final class AuthLoginSuccess extends AuthState {}

final class AuthLoginFailure extends AuthState {
  final String errMessage;
  AuthLoginFailure({required this.errMessage});
}

final class AuthSingupInitial extends AuthState {}

final class AuthSingupLoading extends AuthState {}

final class AuthSingupSuccess extends AuthState {}

final class AuthSingupFailure extends AuthState {
  final String errMessage;
  AuthSingupFailure({required this.errMessage});
}
