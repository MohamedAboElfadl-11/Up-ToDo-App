import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todoapp/core/utils/app_assets.dart';
import 'package:todoapp/core/utils/app_colors.dart';
import 'package:todoapp/core/utils/app_strings.dart';

class OnBoardingScreens extends StatelessWidget {
  OnBoardingScreens({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // textButton skip
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            child: Text(
                              AppStrings.skip,
                              style: GoogleFonts.lato(
                                fontSize: 16.0,
                                color: AppColors.white.withOpacity(0.44),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        // On boarding image
                        Image.asset(
                          AppAssets.onBoardingOne,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        //Dotes
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                            activeDotColor: AppColors.primary,
                            dotHeight: 8.0,
                            // dotWidth: 10.0,
                            spacing: 8,
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        // Title
                        Text(
                          AppStrings.onBoardingTitleOne,
                          style: GoogleFonts.lato(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 42.0,
                        ),
                        // sub title
                        Text(
                          AppStrings.onBoardingSubTitleOne,
                          style: GoogleFonts.lato(
                            fontSize: 16.0,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 107.0,
                        ),
                      ],
                    );
                  },
                ),
              ),
              // Buttons
              Row(
                children: [
                  // back button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        AppStrings.back,
                        style: GoogleFonts.lato(
                          fontSize: 16.0,
                          color: AppColors.white.withOpacity(0.44),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                  // next button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      AppStrings.next,
                      style: GoogleFonts.lato(
                        fontSize: 16.0,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
