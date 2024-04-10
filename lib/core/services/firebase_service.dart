import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:kutuku/core/utils/helpers/show_snake_bar.dart';

class FirebaseService {
  Future<void> registerUsingEmailAndPassword({
    required String? email,
    required String? password,
  }) async {
    try {
      final Credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnakeBar(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnakeBar(message: 'The account already exists for that email.');
      }
    } catch (e) {
      showSnakeBar(message: e.toString());
    }
  }

  Future<void> singinWithEmailAndPasswordP(
      {required String? email, required String? password}) async {
    try {
      final Credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
        showSnakeBar(message: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
        showSnakeBar(message: 'Wrong password provided for that user.');
      }
    } catch (e) {
      log(e.toString());
      showSnakeBar(message: e.toString());
    }
  }
}
