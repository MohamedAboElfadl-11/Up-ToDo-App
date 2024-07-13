import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todoapp/core/utils/app_colors.dart';
import 'package:todoapp/core/utils/app_strings.dart';
import 'package:todoapp/features/auth/data/model/on_boarding_model.dart';
import 'package:todoapp/features/tasks/presentation/screens/home_screen.dart';

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
                  itemCount: OnBoardingModel.onBoardingScreensData.length,
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // textButton skip
                        index != 2
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  child: Text(
                                    AppStrings.skip,
                                    style: GoogleFonts.lato(
                                      fontSize: 16.0,
                                      color: AppColors.white.withOpacity(0.44),
                                    ),
                                  ),
                                  onPressed: () {
                                    controller.jumpToPage(2);
                                  },
                                ),
                              )
                            : const SizedBox(
                                height: 48.0,
                              ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        // On boarding image
                        Image.asset(
                          OnBoardingModel.onBoardingScreensData[index].imgPath,
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
                          OnBoardingModel.onBoardingScreensData[index].title,
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
                          OnBoardingModel.onBoardingScreensData[index].subTitle,
                          style: GoogleFonts.lato(
                            fontSize: 16.0,
                            color: AppColors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 107.0,
                        ),
                        const Spacer(),
                        // Buttons
                        Row(
                          children: [
                            // back button
                            Align(
                              alignment: Alignment.centerLeft,
                              child: index != 0
                                  ? TextButton(
                                      child: Text(
                                        AppStrings.back,
                                        style: GoogleFonts.lato(
                                          fontSize: 16.0,
                                          color:
                                              AppColors.white.withOpacity(0.44),
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.previousPage(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.linear,
                                        );
                                      },
                                    )
                                  : Container(),
                            ),
                            const Spacer(),
                            // next button
                            index != 2
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.linear,
                                      );
                                    },
                                    child: Text(
                                      AppStrings.next,
                                      style: GoogleFonts.lato(
                                        fontSize: 16.0,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // nav to home screen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => HomeScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      AppStrings.getStarted,
                                      style: GoogleFonts.lato(
                                        fontSize: 16.0,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
