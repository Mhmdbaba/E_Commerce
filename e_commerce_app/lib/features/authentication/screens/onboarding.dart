import 'package:e_commerce_app_v2/utils/constants/image_strings.dart';
import 'package:e_commerce_app_v2/utils/constants/sizes.dart';
import 'package:e_commerce_app_v2/utils/constants/text_strings.dart';
import 'package:e_commerce_app_v2/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          children: [
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  Image(
                      width: THelperFunctions.screenWidth() * 0.8,
                      height: THelperFunctions.screenHeight() * 0.8,
                      image: const AssetImage(TImages.onBoardingImage1)),
                  Text(
                    IText.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Text(
                    IText.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
