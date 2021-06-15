import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../network/my_network.dart';

class AdoptionDetailModal extends StatelessWidget {
  const AdoptionDetailModal({
    Key? key,
    required this.cat,
    required this.category,
  }) : super(key: key);

  final Cat cat;
  final CatCategory category;

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
                                      color: colorPallete.monochromaticColor!, width: .5),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(1, 1),
                                      color: colorPallete.monochromaticColor!.withOpacity(.8),
                                      blurRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    cat.image,
                                    fit: BoxFit.cover,
                                    height: sizes.height(context) / 5,
                                    width: sizes.width(context),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: -10,
                                child: CircleAvatar(
                                  radius: 16.0,
                                  backgroundColor: cat.colorGender,
                                  foregroundColor: Colors.white,
                                  child: Icon(
                                    cat.iconGender,
                                    size: 16.0,
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
                                  cat.name,
                                  style: GoogleFonts.montserratAlternates(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: cat.ageType),
                                      TextSpan(
                                        text: ' (${cat.age} bulan)',
                                        style: TextStyle(
                                          color: colorPallete.primaryColor,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Text('Jenis :'),
                                    const SizedBox(width: 10),
                                    Text(category.name),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Warna : ',
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: cat.color,
                                          radius: 10.0,
                                        ),
                                      ],
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
                    cat.description,
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
            'Adopsi Sekarang',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
