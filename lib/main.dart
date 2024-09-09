import 'package:flutter/material.dart';
import 'package:islamic_app/core/theme/application_theme.dart';
import 'package:islamic_app/layout/layout_view.dart';
import 'package:islamic_app/moduls/ahadith/ahadith_details_view.dart';
import 'package:islamic_app/moduls/quran/quran_details_view.dart';
import 'package:islamic_app/moduls/splash/splash_view.dart';

//Topics to learn in this application
//1-How to read data from assets and Showing it data by (Database-Firestore-localram or memory-Data file)
//2-Localization (changing the language)
//3- Theme (changing the theme)
//4-State management

//Stages to build the application
//1- Splash screen
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        // Define your routes here (Callback function returns object from type SplashView)
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        AhadithDetailsView.routeName: (context) => const AhadithDetailsView(),
      },
    );
  }
}
