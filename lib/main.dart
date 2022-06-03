import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kobza/di/injection.dart';
import 'package:kobza/localization/localization.dart';
import 'package:kobza/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    this.locale,
  });

  final Locale? locale;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    configureInjection();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AppLocalizations.of(context).mainPageTitle',
      locale: widget.locale,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        backgroundColor: const Color.fromARGB(255, 250, 243, 185),
        cardColor: Colors.white,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
      routerDelegate: getIt<AppRouter>().delegate(),
    );
  }
}
