import 'package:json_annotation/json_annotation.dart';

part 'animal.g.dart';

@JsonSerializable()
class Animal {
  String? nome;

  Animal({
    this.nome,
  });

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}
