import 'package:adhicine_assignment/screens/page_screen.dart';
import 'package:flutter/material.dart';

import 'auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adhicine',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SignInScreen(),
    );
  }
}

