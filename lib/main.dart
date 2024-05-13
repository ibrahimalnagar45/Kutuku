import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/bloc_observer.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/models/prodcut_model.dart';
import 'features/auth/data/models/user_model.dart';
import 'firebase_options.dart';

void main() async {
  await intializeFirebase();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  Hive.registerAdapter(UserModelAdapter());
   await Hive.openBox<ProductModel>('myCart');
   await Hive.openBox<UserModel>('user');
   await Hive.openBox<ProductModel>('favourites');
  Bloc.observer = MyBlocObserver();
  runApp(const Kutuku());
}

Future<void> intializeFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class Kutuku extends StatelessWidget {
  const Kutuku({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: AppRoutes.routes,
    );
  }
}
