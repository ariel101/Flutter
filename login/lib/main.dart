import 'package:flutter/material.dart';
import 'package:login/screen/home.dart';
import 'package:login/screen/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login',
      initialRoute: 'home',
      routes: {
        'home':(_) => home(),
        //'login':(_) => Login(),
      },
      
    );
  }
}