import 'package:authentification/screens/guest/Auth.dart';
import 'package:authentification/screens/guest/Therms.dart';
import 'package:authentification/screens/guest/password.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: AuthScreen(),
    );
  }
}

