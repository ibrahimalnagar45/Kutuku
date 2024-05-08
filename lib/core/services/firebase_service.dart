import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:kutuku/core/utils/helpers/show_snake_bar.dart';

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
          email: email!, password: password!);
      showSnakeBar(
          context: context, message: 'the registeration process success');
      GoRouter.of(context).push(AppRoutes.kLoginView);
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

  Future<void> singinWithEmailAndPassword({
    required String? email,
    required String? password,
    required context,
  }) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email!, password: password!);
      GoRouter.of(context).push(AppRoutes.kHomeView);
      showSnakeBar(context: context, message: 'the login process success');
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
        log(e.toString());

        showSnakeBar(context: context, message: e.toString());
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

  // Future<void> singinWithGoogle() async {
  //   GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
  //   GoogleSignInAuthentication googleSignInAuthentication =
  //       await googleSignInAccount!.authentication;
  //   AuthCredential credential = GoogleAuthProvider.credential(
  //       idToken: googleSignInAuthentication.idToken,
  //       accessToken: googleSignInAuthentication.accessToken);
  //   UserCredential userAuth =
  //       await firebaseAuth.signInWithCredential(credential);
  //   User? user = userAuth.user;
  //   log(user!.email.toString());
  // }

// Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }
}
