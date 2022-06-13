import 'package:bilsoft_quiz_app/feature/screens/english.dart';
import 'package:bilsoft_quiz_app/feature/screens/home_page.dart';
import 'package:bilsoft_quiz_app/feature/screens/math_page.dart';
import 'package:bilsoft_quiz_app/feature/screens/questions_page.dart';
import 'package:bilsoft_quiz_app/feature/screens/sign_in.dart';
import 'package:bilsoft_quiz_app/feature/screens/test_starting_page.dart';
import 'package:bilsoft_quiz_app/feature/screens/turkish_page.dart';
import 'package:bilsoft_quiz_app/feature/viewmodel/home_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'feature/screens/sign_up.dart';
import 'feature/screens/test_finishing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(    
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider()),
      ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilsoft Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SignIn(),
    );
  }
}
