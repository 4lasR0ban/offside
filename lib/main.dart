import 'package:flutter/material.dart';
import 'package:offside/screens/loading_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offside',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoadingScreen(),
    );
  }
}
