import 'package:flutter/material.dart';
import 'package:list2/login.dart';
import 'package:list2/catalog.dart';
import 'package:list2/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
      routes: {
        '/catalog' :(context) => Catalog(),
        '/login' :(context) => const Login(),
        '/register' :(context) => const Register(),
      },
    );
  }
}