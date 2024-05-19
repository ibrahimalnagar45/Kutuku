import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
 import 'package:google_sign_in/google_sign_in.dart';

import '../../core/utils/show_snake_bar.dart';
import '../auth/presentation/views/login_view.dart'; 
class FirebaseService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> registerUsingEmailAndPassword({
    required context,
    required String? email,
    required String? password,
  }) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      showSnakeBar(
          context: context, message: 'the registeration process success');
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const StoreLoginView();
      }));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnakeBar(
            context: context, message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnakeBar(
            context: context,
            message: 'The account already exists for that email.');
      } else {
        showSnakeBar(context: context, message: e.message!.toString());
      }
    } catch (e) {
      showSnakeBar(
        context: context,
        message: e.toString(),
      );
    }
  }

  Future<void> singinWithEmailAndPassword({
    required String? email,
    required String? password,
    required context,
  }) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email!, password: password!);
      //write where to go next here     
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
        showSnakeBar(
            context: context, message: 'No user found for that email.');
        // throw 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
        showSnakeBar(
            context: context,
            message: 'Wrong password provided for that user.');
        // throw 'Wrong password provided for that user.';
      } else {
        log(e.message!.toString());

        showSnakeBar(context: context, message: e.message!.toString());
        // throw e.toString();
      }
    } catch (e) {
      log(e.toString());
      showSnakeBar(context: context, message: e.toString());
    }
  }

  Future<void> singout() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> singinWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      UserCredential userAuth =
          await firebaseAuth.signInWithCredential(credential);
      User? user = userAuth.user;
      log(user!.email.toString());
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}
