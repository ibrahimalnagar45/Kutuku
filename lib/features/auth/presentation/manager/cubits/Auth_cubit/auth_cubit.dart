import 'package:bloc/bloc.dart';
import 'package:kutuku/core/services/firebase_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthLoginInitial());
  final FirebaseService _firebaseService = FirebaseService();
  void signinWithEmailAndPassword(
      {required String? email, required String? password, required context}) {
    try {
      emit(AuthLoginLoading());
      _firebaseService.singinWithEmailAndPassword(
        email: email,
        password: password,
        context: context,
      );
      emit(AuthLoginSuccess());
    } catch (e) {
      emit(
        AuthLoginFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }

  void signupWithEmailAndPassword({required String? email,required String? password,required context}) {
    try {
      emit(AuthSingupLoading());
      _firebaseService.registerUsingEmailAndPassword(
        email: email,
        password: password,
        context: context,
      );
      emit(AuthSingupSuccess());
    } catch (e) {
      emit(
        AuthSingupFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
