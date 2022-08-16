import 'package:freezed_annotation/freezed_annotation.dart';

part 'pattern_matching.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error([String? message]) = UnionError;
}

void main(List<String> args) {
  var union = Union(1);
  // var union = Union.error('Erro');
  // var union = Union.loading();

  /*
    when
    maybeWhen
    map
    maybeMap
  */

  // O when tem desestruturação. Ele devolve os atributos do objeto.
  var mensagemWhen = union.when<String>(
    (value) => 'Union Data',
    loading: () => 'Loading',
    error: (message) => 'Error: $message',
  );

  // No map não tem desestruturação. Devolve o objeto.
  var mensagemMap = union.map(
    (UnionData value) => '${value.runtimeType}',
    loading: (UnionLoading loading) => '${loading.runtimeType}',
    error: (UnionError error) => '${error.runtimeType}',
  );

  print(mensagemWhen);
  print(mensagemMap);
}
