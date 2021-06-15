import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyek_akhir/src/utils/const.dart';

import '../../utils/my_utils.dart';

import '../adoption/adoption_screen.dart';
import '../equipment/equipment_category_screen.dart';

import './widgets/drawer_app.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeNamed = '/welcome-screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    AdoptionScreen(),
    EquipmentCategoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          UtilsConst.appName,
          style: GoogleFonts.montserratAlternates(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: const DrawerApp(),
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: Ink(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black12),
          ),
        ),
        child: BottomAppBarWithFAB(
          elevation: 0.0,
          backgroundColor: colorPallete.scaffoldBackgroundColor,
          items: [
            BottomAppBarItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    '${appConfig.urlImageAsset}/${UtilsConst.navbarAdoptionAsset}',
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text(UtilsConst.navbarAdoptionText)
                ],
              ),
            ),
            // BottomAppBarItem(child: Text('Perlengkapan')),
            BottomAppBarItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    '${appConfig.urlImageAsset}/${UtilsConst.navbarEquipmentAsset}',
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text(UtilsConst.navbarEquipmentText)
                ],
              ),
            ),
          ],
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}
