import 'package:e_commerce_app_v2/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/onboarding/widgets/onboarding_dot_navigstion.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app_v2/utils/constants/image_strings.dart';
import 'package:e_commerce_app_v2/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
        body: Stack(
      children: [
        //Horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: IText.onBoardingSubTitle1,
              subTitle: IText.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: IText.onBoardingSubTitle2,
              subTitle: IText.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: IText.onBoardingSubTitle3,
              subTitle: IText.onBoardingSubTitle3,
            ),
          ],
        ),

        //skip button
        const OnBoardingSkip(),

        //dot navigation smoothPageIndicator
        const OnBoardingDotNavigation(),

        //circular button
        const OnBoardingNextButton()
      ],
    ));
  }
}
