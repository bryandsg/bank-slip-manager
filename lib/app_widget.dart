import 'package:bank_slip_manager/modules/home/home_page.dart';
import 'package:bank_slip_manager/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';


void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
