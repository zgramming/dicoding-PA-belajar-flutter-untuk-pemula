import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:global_template/global_template.dart';

import '../../../network/my_network.dart';

import './widgets/adoption_detail_modal.dart';

class AdoptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: cats.length,
      padding: const EdgeInsets.all(8.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      itemBuilder: (context, index) {
        final cat = cats[index];

        return InkWell(
          onTap: () {
            final category = catsCategory.firstWhere((element) => element.id == cat.catCategory);
            showModalBottomSheet(
              context: context,
              backgroundColor: colorPallete.scaffoldBackgroundColor,
              builder: (context) {
                return AdoptionDetailModal(cat: cat, category: category);
              },
            );
          },
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: colorPallete.monochromaticColor!,
                width: 2.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(
                cat.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      staggeredTileBuilder: (index) => StaggeredTile.count(1, index.isEven ? 1.2 : 1.8),
    );
  }
}
