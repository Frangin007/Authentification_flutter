import 'package:authentification/screens/guest/Auth.dart';
import 'package:authentification/screens/guest/Therms.dart';
import 'package:flutter/material.dart';
import '';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: TermScreen(),
    );
  }
}

