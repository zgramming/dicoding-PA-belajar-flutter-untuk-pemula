import 'package:equatable/equatable.dart';
import 'package:global_template/global_template.dart';

import '../../../src/utils/my_utils.dart';

class EquipmentCategory extends Equatable {
  const EquipmentCategory({
    required this.id,
    this.name = '',
    this.description = '',
    this.image = '',
  });
  final int id;
  final String name;
  final String description;
  final String image;

  @override
  List<Object> get props => [id, name, description, image];

  @override
  bool get stringify => true;

  EquipmentCategory copyWith({
    int? id,
    String? name,
    String? description,
    String? image,
  }) {
    return EquipmentCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }
}

final equipmentCategories = <EquipmentCategory>[
  EquipmentCategory(
    id: 1,
    name: 'Makanan',
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryFoodAsset}',
  ),
  EquipmentCategory(
    id: 2,
    name: 'Mainan',
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryToyAsset}',
  ),
  EquipmentCategory(
      id: 3,
      name: 'Peralatan Grooming',
      image: '${appConfig.urlImageAsset}/${UtilsConst.categoryGroomingAsset}'),
  EquipmentCategory(
      id: 4,
      name: 'Tempat Makan & Minum',
      image: '${appConfig.urlImageAsset}/${UtilsConst.categoryBowlAsset}'),
];
