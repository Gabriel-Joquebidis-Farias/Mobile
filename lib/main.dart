import 'package:flutter/material.dart';
import 'package:tcc/cadastro.dart';
import 'package:tcc/home.dart';
import 'package:tcc/login.dart';
import 'package:tcc/produtos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/produtos': (context) => produtos(),
        '/cadastro': (context) => CombinedPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
