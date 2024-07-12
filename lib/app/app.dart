import 'package:flutter/material.dart';
import 'package:todoapp/core/utils/app_strings.dart';
import 'package:todoapp/features/auth/presentation/screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      home: SplashScreen(),
    );
  }
}
