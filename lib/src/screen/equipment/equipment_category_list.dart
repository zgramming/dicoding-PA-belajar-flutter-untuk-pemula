import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../network/my_network.dart';

import './equipment_category_detail_modal.dart';

class EquipmentCategoryList extends StatelessWidget {
  final EquipmentCategory category;
  static const routeNamed = '/equipment-detail-screen';

  const EquipmentCategoryList({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = equipmentItems.where((element) => element.idCategory == category.id).toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          category.name,
          style: GoogleFonts.montserratAlternates(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => EquipmentCategoryDetailModal(item: item),
                  );
                },
                borderRadius: BorderRadius.circular(10.0),
                child: Ink(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colorPallete.monochromaticColor,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 19.0,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    title: Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: 'Harga : ', style: TextStyle(fontSize: 8.0)),
                            TextSpan(
                                text: GlobalFunction.abbreviateNumber(item.price),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: colorPallete.accentColor)),
                            const TextSpan(text: '/item', style: TextStyle(fontSize: 8.0)),
                            const TextSpan(text: '|'),
                            const TextSpan(text: 'Stok : ', style: TextStyle(fontSize: 8.0)),
                            TextSpan(
                                text: GlobalFunction.abbreviateNumber(item.stock),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: colorPallete.accentColor)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
