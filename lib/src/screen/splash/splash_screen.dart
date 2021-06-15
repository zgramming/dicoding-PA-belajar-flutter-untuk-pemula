import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';

import '../../utils/my_utils.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  static const routeNamed = '/splash-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenTemplate(
        image: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            '${appConfig.urlImageAsset}/${UtilsConst.logoAsset}',
          ),
        ),
        navigateAfterSplashScreen: (context) => WelcomeScreen(),
        copyRightVersion: const CopyRightVersion(),
      ),
    );
  }
}
