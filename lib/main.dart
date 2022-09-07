import 'extended_class/gato.dart';

main() {
  final map = {"nome": "aaa", "idade": 3};

  Gato gato = Gato.fromJson(map);

  print(gato.nome);
  print(gato.idade);
}
