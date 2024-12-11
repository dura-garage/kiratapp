import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kiratiapp/pages/home_page.dart';
import 'package:kiratiapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'provider/locale_provider.dart';
import 'localization.dart';

void main() {
  // Initialize ThemeProvider and load the theme
  // final themeProvider = ThemeProvider();
  // await themeProvider.loadTheme();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English
          Locale('ne', ''), // Spanish
        ],
        locale: localeProvider.locale,
        debugShowCheckedModeBanner: false,
        theme:themeProvider.themeData,// Dynamic locale
        home:  Home(),
      );
    });
  }
}
