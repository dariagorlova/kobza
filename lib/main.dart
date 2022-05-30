import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kobza/features/start/start_screen.dart';
import 'package:kobza/localization/localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.of(context).mainPageTitle,
      //theme: ThemeData.dark(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        backgroundColor: Colors.brown,
        cardColor: Colors.white,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const StartScreen(),
    );
  }
}
