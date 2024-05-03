import 'package:e_commerce_app_v2/common/styles/spacing_styles.dart';
import 'package:e_commerce_app_v2/utils/constants/image_strings.dart';
import 'package:e_commerce_app_v2/utils/constants/sizes.dart';
import 'package:e_commerce_app_v2/utils/constants/text_strings.dart';
import 'package:e_commerce_app_v2/utils/helpers/helper_functions.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, title, subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(IText.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(IText.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              //Form
              Form(
                  child: Column(
                children: [
                  //Email
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: IText.email),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  //Passsword
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: IText.password,
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                  //Remember Me & Forget Password
                  Row(
                    children: [
                      //Remember Me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(IText.rememberMe),
                        ],
                      ),

                      //Forget Password
                      TextButton(
                          onPressed: () {},
                          child: const Text(IText.forgetPassword)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
