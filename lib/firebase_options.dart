// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAZHKZ1yAvDYm5D3fhG6uWmpu3XlEsW5uc',
    appId: '1:314826956376:web:0872f9b1930aa47813f42d',
    messagingSenderId: '314826956376',
    projectId: 'kutuku-c6dc6',
    authDomain: 'kutuku-c6dc6.firebaseapp.com',
    storageBucket: 'kutuku-c6dc6.appspot.com',
    measurementId: 'G-DWEP3W937P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbSzXOKpTuncdUr1CUqZUESNiORZ1_HmY',
    appId: '1:314826956376:android:705f39a70d1f26a413f42d',
    messagingSenderId: '314826956376',
    projectId: 'kutuku-c6dc6',
    storageBucket: 'kutuku-c6dc6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCp9gL-pVwKVv6nDYHJpZXHpqezi5yAnYk',
    appId: '1:314826956376:ios:456a73156212fc0813f42d',
    messagingSenderId: '314826956376',
    projectId: 'kutuku-c6dc6',
    storageBucket: 'kutuku-c6dc6.appspot.com',
    iosBundleId: 'com.example.kutuku',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCp9gL-pVwKVv6nDYHJpZXHpqezi5yAnYk',
    appId: '1:314826956376:ios:c730422b2c50aa2113f42d',
    messagingSenderId: '314826956376',
    projectId: 'kutuku-c6dc6',
    storageBucket: 'kutuku-c6dc6.appspot.com',
    iosBundleId: 'com.example.kutuku.RunnerTests',
  );
}
