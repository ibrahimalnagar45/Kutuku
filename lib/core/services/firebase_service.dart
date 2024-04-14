import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
 import 'package:kutuku/core/utils/helpers/show_snake_bar.dart';

class FirebaseService {
// firebasema
  Future<void> registerUsingEmailAndPassword({
    required context,
    required String? email,
    required String? password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      showSnakeBar(context: context, message: 'the registeration process success');

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnakeBar(
            context: context, message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnakeBar(
            context: context,
            message: 'The account already exists for that email.');
      }
    } catch (e) {
      showSnakeBar(
        context: context,
        message: e.toString(),
      );
    }
  }

  Future<void> singinWithEmailAndPasswordP({
    required String? email,
    required String? password,
    required context,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      showSnakeBar(context: context, message: 'the login process success');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
        showSnakeBar(
            context: context, message: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
        showSnakeBar(
            context: context,
            message: 'Wrong password provided for that user.');
      }
    } catch (e) {
      log(e.toString());
      showSnakeBar(context: context, message: e.toString());
    }
  }
}
