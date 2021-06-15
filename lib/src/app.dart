import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';

import '../network/my_network.dart';

import './screen/equipment/equipment_category_list.dart';
import './screen/splash/splash_screen.dart';
import './utils/my_utils.dart';

class MyApp extends StatelessWidget {
  final routeAnimation = RouteAnimation();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UtilsConst.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colorPallete.primaryColor,
        accentColor: colorPallete.accentColor,
        textTheme: GoogleFonts.openSansTextTheme(),
        scaffoldBackgroundColor: colorPallete.scaffoldBackgroundColor,
      ),
      home: SplashScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SplashScreen.routeNamed:
            return routeAnimation.fadeTransition(
                screen: (ctx, animation, secondaryAnimation) => SplashScreen());
          case EquipmentCategoryList.routeNamed:
            return routeAnimation.slideTransition(
              screen: (ctx, animation, secondaryAnimation) => EquipmentCategoryList(
                category: settings.arguments! as EquipmentCategory,
              ),
            );
          default:
        }
      },
    );
  }
}
