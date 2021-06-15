import 'package:equatable/equatable.dart';
import 'package:global_template/global_template.dart';

import '../../../src/utils/my_utils.dart';

class EquipmentItem extends Equatable {
  const EquipmentItem({
    required this.id,
    required this.idCategory,
    this.name = '',
    this.price = 0,
    this.stock = 0,
    this.description = '',
    this.image = '',
  });
  final int id;
  final int idCategory;
  final String name;
  final int price;
  final int stock;
  final String description;
  final String image;

  @override
  List<Object> get props {
    return [
      id,
      idCategory,
      name,
      price,
      stock,
      description,
      image,
    ];
  }

  @override
  bool get stringify => true;

  EquipmentItem copyWith({
    int? id,
    int? idCategory,
    String? name,
    int? price,
    int? stock,
    String? description,
    String? image,
  }) {
    return EquipmentItem(
      id: id ?? this.id,
      idCategory: idCategory ?? this.idCategory,
      name: name ?? this.name,
      price: price ?? this.price,
      stock: stock ?? this.stock,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }
}

final equipmentItems = <EquipmentItem>[
  ///* Food
  EquipmentItem(
    id: 1,
    idCategory: 1,
    name: 'Makanan Super V.1',
    price: 55000,
    stock: 10,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryFoodAsset}',
  ),
  EquipmentItem(
    id: 2,
    idCategory: 1,
    name: 'Makanan Super V.2',
    price: 65000,
    stock: 2,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryFoodAsset}',
  ),
  EquipmentItem(
    id: 3,
    idCategory: 1,
    name: 'Makanan Super V.3',
    price: 80000,
    stock: 8,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryFoodAsset}',
  ),

  ///* Toy
  EquipmentItem(
    id: 4,
    idCategory: 2,
    name: 'Mainan Interaktif V.1',
    price: 10000,
    stock: 40,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryToyAsset}',
  ),
  EquipmentItem(
    id: 5,
    idCategory: 2,
    name: 'Mainan Interaktif V.2',
    price: 15000,
    stock: 20,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryToyAsset}',
  ),
  EquipmentItem(
    id: 6,
    idCategory: 2,
    name: 'Mainan Interaktif V.3',
    price: 20000,
    stock: 30,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryToyAsset}',
  ),

  ///* Grooming
  EquipmentItem(
    id: 7,
    idCategory: 3,
    name: 'Grooming Daily V.1',
    price: 60000,
    stock: 3,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryGroomingAsset}',
  ),
  EquipmentItem(
    id: 8,
    idCategory: 3,
    name: 'Grooming Daily V.2',
    price: 20000,
    stock: 2,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryGroomingAsset}',
  ),
  EquipmentItem(
    id: 9,
    idCategory: 3,
    name: 'Grooming Daily V.3',
    price: 150000,
    stock: 6,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryGroomingAsset}',
  ),

  ///* Bowl
  EquipmentItem(
    id: 10,
    idCategory: 4,
    name: 'Tempat Makan serba laguna',
    price: 10000,
    stock: 1000,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: '${appConfig.urlImageAsset}/${UtilsConst.categoryBowlAsset}',
  ),
];
