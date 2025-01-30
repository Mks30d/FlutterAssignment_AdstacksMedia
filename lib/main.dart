import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,

      home: const Dashboard(),
    );
  }
}