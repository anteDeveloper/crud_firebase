import 'package:crud_firebase/pages/add_empleado.dart';
import 'package:crud_firebase/pages/home_page.dart';
import 'package:crud_firebase/pages/update_page.dart';

import 'package:flutter/material.dart';

//import firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddEmpleado(),
        '/update': (context) => const UpdateEmpleado(),
      },
    );
  }
}
