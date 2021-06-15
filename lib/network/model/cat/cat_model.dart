import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:global_template/global_template.dart';

enum CatGender { male, female, unknown }

class Cat extends Equatable {
  const Cat({
    required this.id,
    this.name = '',
    this.catCategory = -1,
    this.catGender = CatGender.unknown,
    this.age = -1,
    this.color = Colors.transparent,
    this.description = '',
    this.image = '',
  });

  final int id;
  final String name;
  final int catCategory;
  final CatGender catGender;

  /// In Month
  final int age;
  final Color color;
  final String description;
  final String image;

  String get ageType {
    var result = '';
    if (age < 12) {
      result = 'Kitten';
    } else if (age >= 12 && age < 120) {
      result = 'Adult';
    } else {
      result = 'Old';
    }

    return result;
  }

  IconData get iconGender {
    IconData result = FontAwesomeIcons.female;
    switch (catGender) {
      case CatGender.female:
        result = FontAwesomeIcons.female;
        break;
      case CatGender.male:
        result = FontAwesomeIcons.male;
        break;
      default:
        result = FontAwesomeIcons.question;
        break;
    }
    return result;
  }

  Color get colorGender {
    Color result = Colors.blue;
    switch (catGender) {
      case CatGender.female:
        result = Colors.pink;
        break;
      case CatGender.male:
        result = Colors.blue;
        break;
      default:
        result = Colors.black;
        break;
    }
    return result;
  }

  @override
  List<Object> get props {
    return [
      id,
      name,
      catCategory,
      catGender,
      age,
      color,
      description,
      image,
    ];
  }

  Cat copyWith({
    int? id,
    String? name,
    int? catCategory,
    CatGender? catGender,
    int? age,
    Color? color,
    String? description,
    String? image,
  }) {
    return Cat(
      id: id ?? this.id,
      name: name ?? this.name,
      catCategory: catCategory ?? this.catCategory,
      catGender: catGender ?? this.catGender,
      age: age ?? this.age,
      color: color ?? this.color,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }

  @override
  bool get stringify => true;
}

final cats = <Cat>[
  Cat(
    id: 1,
    name: 'Chewy',
    age: 10,
    catGender: CatGender.male,
    color: Colors.grey,
    description: '''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
    image: '${appConfig.urlImageAsset}/cat-kitten.jpg',
    catCategory: 10,
  ),
  Cat(
    id: 2,
    name: 'Snow',
    age: 8,
    catGender: CatGender.female,
    color: Colors.white,
    description: '''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
    image: '${appConfig.urlImageAsset}/cat-kitten2.jpg',
    catCategory: 1,
  ),
  Cat(
    id: 3,
    name: 'Blanca',
    age: 5,
    catGender: CatGender.male,
    color: Colors.grey,
    description: '''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
    image: '${appConfig.urlImageAsset}/cat-kitten3.jpg',
    catCategory: 2,
  ),
  Cat(
    id: 4,
    name: 'Samurai Jack',
    age: 15,
    catGender: CatGender.male,
    color: Colors.grey,
    description: '''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
    image: '${appConfig.urlImageAsset}/cat-adult.jpg',
    catCategory: 2,
  ),
  Cat(
    id: 5,
    name: 'Pepper',
    age: 20,
    catGender: CatGender.male,
    color: Colors.orange,
    description: '''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
    image: '${appConfig.urlImageAsset}/cat-adult2.jpg',
    catCategory: 2,
  ),
  Cat(
    id: 6,
    name: 'Firefly',
    age: 24,
    catGender: CatGender.male,
    color: Colors.orange,
    description: '''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    ''',
    image: '${appConfig.urlImageAsset}/cat-adult3.jpg',
    catCategory: 10,
  ),
];
