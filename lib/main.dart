import 'package:aplicationbdd/views/Home/Pagehome.dart';
import 'package:aplicationbdd/views/Inscription/Inscription.dart';
import 'package:aplicationbdd/views/PageForgotPassword/BoxForgotLogin.dart';
import 'package:aplicationbdd/views/Loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData.dark().copyWith(),
      routes: {
        '/':(context)=> const LoginPage(),
        '/reinitialisation':(context)=> BoxForgotLogin(),
        '/inscription':(context)=> Inscription(),
        '/home':(context)=> PageHome(),
      },

    );
  }
}




