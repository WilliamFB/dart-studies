// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gato.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gato _$GatoFromJson(Map<String, dynamic> json) => Gato(
      idade: json['idade'] as int?,
    )..nome = json['nome'] as String?;

Map<String, dynamic> _$GatoToJson(Gato instance) => <String, dynamic>{
      'nome': instance.nome,
      'idade': instance.idade,
    };
