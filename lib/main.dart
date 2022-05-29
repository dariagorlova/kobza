import 'package:flutter/material.dart';
import 'package:kobza/features/start/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kobza',
      //theme: ThemeData.dark(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        backgroundColor: Colors.white,
      ),
      home: const StartScreen(),
    );
  }
}
