import 'package:dart_studies/extended_class/animal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gato.g.dart';

@JsonSerializable()
class Gato extends Animal {
  int? idade;

  Gato({
    this.idade,
  });

  factory Gato.fromJson(Map<String, dynamic> json) => _$GatoFromJson(json);

  Map<String, dynamic> toJson() => _$GatoToJson(this);
}
