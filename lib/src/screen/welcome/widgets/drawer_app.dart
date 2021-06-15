import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../network/my_network.dart';

import '../../../utils/my_utils.dart';
import '../../equipment/equipment_category_list.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: sizes.statusBarHeight(context),
                      left: 12,
                      right: 12,
                    ),
                    height: sizes.height(context) / 4,
                    decoration: BoxDecoration(color: colorPallete.monochromaticColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Image.asset(
                            '${appConfig.urlImageAsset}/${UtilsConst.logoAsset}',
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          UtilsConst.appName,
                          style: GoogleFonts.montserratAlternates(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          UtilsConst.descriptionApp,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(
                    equipmentCategories.length,
                    (index) {
                      final item = equipmentCategories[index];
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            EquipmentCategoryList.routeNamed,
                            arguments: item,
                          );
                        },
                        title: Text(item.name,
                            style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
                        trailing: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            item.image,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          CopyRightVersion(
            backgroundColor: colorPallete.monochromaticColor,
          ),
        ],
      ),
    );
  }
}
