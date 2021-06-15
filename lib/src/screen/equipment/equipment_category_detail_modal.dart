import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../network/my_network.dart';

class EquipmentCategoryDetailModal extends StatelessWidget {
  const EquipmentCategoryDetailModal({
    Key? key,
    required this.item,
  }) : super(key: key);

  final EquipmentItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: sizes.height(context) / 5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Ink(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: colorPallete.monochromaticColor!,
                                    width: .5,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    item.image,
                                    fit: BoxFit.cover,
                                    height: sizes.height(context) / 5,
                                    width: sizes.width(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  padding: const EdgeInsets.all(9.0),
                                  decoration: BoxDecoration(
                                    color: colorPallete.monochromaticColor,
                                  ),
                                  child: Text(
                                    GlobalFunction.formatNumber(item.stock),
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  item.name,
                                  style: GoogleFonts.montserratAlternates(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          const TextSpan(text: 'Harga : '),
                                          TextSpan(
                                            text: GlobalFunction.formatNumber(item.price),
                                            style: TextStyle(
                                              color: colorPallete.monochromaticColor,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      style: const TextStyle(fontSize: 10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    item.description,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            primary: colorPallete.primaryColor,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: const RoundedRectangleBorder(),
          ),
          child: Text(
            'Beli Sekarang',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
