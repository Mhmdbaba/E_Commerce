import 'package:e_commerce_app_v2/common/styles/spacing_styles.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app_v2/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app_v2/utils/constants/sizes.dart';
import 'package:e_commerce_app_v2/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets.login_signup/form_divider.dart';
import '../../../../common/widgets.login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, title, subtitle
              const TLoginHeader(),

              //Form
              const TLoginForm(),

              //Divider
              TFormDivider(dividerText: IText.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
