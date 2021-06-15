import 'package:equatable/equatable.dart';

class CatCategory extends Equatable {
  const CatCategory({
    required this.id,
    this.name = '',
    this.description = '',
  });

  final int id;
  final String name;
  final String description;

  CatCategory copyWith({
    int? id,
    String? name,
    String? description,
  }) {
    return CatCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, description];
}

final catsCategory = <CatCategory>[
  const CatCategory(id: 1, name: 'Persia'),
  const CatCategory(id: 2, name: 'Anggora'),
  const CatCategory(id: 3, name: 'Siam'),
  const CatCategory(id: 4, name: 'Ragdoll'),
  const CatCategory(id: 5, name: 'Maine Coon'),
  const CatCategory(id: 6, name: 'Sphynx'),
  const CatCategory(id: 7, name: 'Russian Blue'),
  const CatCategory(id: 8, name: 'Sabana / Savana'),
  const CatCategory(id: 9, name: 'Manx'),
  const CatCategory(id: 10, name: 'Kampung'),
];
