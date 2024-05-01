import 'package:e_commerce_app_v2/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app_v2/utils/constants/colors.dart';
import 'package:e_commerce_app_v2/utils/constants/image_strings.dart';
import 'package:e_commerce_app_v2/utils/constants/sizes.dart';
import 'package:e_commerce_app_v2/utils/constants/text_strings.dart';
import 'package:e_commerce_app_v2/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Horizontal scrollable pages
        PageView(
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
        Positioned(
          bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
          left: TSizes.defaultSpace,
          child: SmoothPageIndicator(
            controller: PageController(),
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: TColors.dark, dotHeight: 6),
          ),
        )
      ],
    ));
  }
}
