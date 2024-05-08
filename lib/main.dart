import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kutuku/constants.dart';
import 'package:kutuku/core/utils/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/models/prodcut_model.dart';
import 'firebase_options.dart';

void main() async {
  await intializeFirebase();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  var myCart = await Hive.openBox<ProductModel>('myCart');

  var favourites = await Hive.openBox<ProductModel>('favourites');
  
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
