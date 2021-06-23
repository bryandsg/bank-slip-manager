import 'package:bank_slip_manager/shared/themes/app_colors.dart';
import 'package:bank_slip_manager/shared/themes/app_images.dart';
import 'package:bank_slip_manager/shared/themes/app_text_styles.dart';
import 'package:bank_slip_manager/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: screenSize.width,
      height: screenSize.height,
      child: Stack(
        children: [
          Container(
            color: AppColors.primary,
            width: screenSize.width,
            height: screenSize.height * 0.36,
          ),
          Positioned(
              top: screenSize.height * 0.07,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 300,
              )),
          Positioned(
            bottom: screenSize.height * 0.05,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.logomini),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                  child: Text(
                    "Organize your bank slips in one place",
                    style: TextStyles.titleHome,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    top: 40,
                  ),
                  child: SocialLoginButton(
                    onTap: () {
                      print("clicou");
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
