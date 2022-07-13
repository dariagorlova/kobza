import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    getIt.pushNewScope();
    configureInjection();
  }

  @override
  void dispose() {
    getIt.popScope();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Let's play in VERBA",
      locale: widget.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff008F7C),
        primarySwatch: Colors.lightGreen,
        backgroundColor: const Color(0xffD4ED8C),
        canvasColor: const Color(0xffF8FBEA), // initial
        errorColor: const Color(0xffC5CA67), // wrong
        splashColor: const Color(0xffC4A54F), // maybe
        focusColor: const Color(0xff3BA354), // correctly
        cardColor: Colors.white,
        dividerColor: Colors.black,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
      routerDelegate: getIt<AppRouter>().delegate(),
    );
  }
}
