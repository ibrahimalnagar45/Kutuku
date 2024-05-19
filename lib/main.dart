import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kutuku/core/utils/app_routes.dart'; 
import 'firebase_options.dart';

void main() async {
  await intializeFirebase();
 
  
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
      color: const Color.fromARGB(255, 67, 29, 148),
    
    
      routerConfig: AppRoutes.routes,
    );
  }
}
