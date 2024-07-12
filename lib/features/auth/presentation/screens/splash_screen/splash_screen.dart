import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/core/utils/app_assets.dart';
import 'package:todoapp/core/utils/app_colors.dart';
import 'package:todoapp/core/utils/app_strings.dart';
import 'package:todoapp/features/auth/presentation/screens/on_boarding_screens/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  void navigate() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => OnBoardingScreens(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.appLogo,
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              AppStrings.appName,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
