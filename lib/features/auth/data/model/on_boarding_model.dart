import 'package:todoapp/core/utils/app_assets.dart';
import 'package:todoapp/core/utils/app_strings.dart';

class OnBoardingModel {
  final String imgPath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imgPath,
    required this.title,
    required this.subTitle,
  });
  static List<OnBoardingModel> onBoardingScreensData = [
    OnBoardingModel(
      imgPath: AppAssets.onBoardingOne,
      title: AppStrings.onBoardingTitleOne,
      subTitle: AppStrings.onBoardingSubTitleOne,
    ),
    OnBoardingModel(
      imgPath: AppAssets.onBoardingTwo,
      title: AppStrings.onBoardingTitlTwo,
      subTitle: AppStrings.onBoardingSubTitlTwo,
    ),
    OnBoardingModel(
      imgPath: AppAssets.onBoardingThree,
      title: AppStrings.onBoardingTitlThree,
      subTitle: AppStrings.onBoardingSubTitlThree,
    ),
  ];
}
