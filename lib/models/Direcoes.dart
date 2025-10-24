import 'Pontos.dart';
import 'Rotas.dart';

class Direcoes {
  final int id;
  final String sentido;
  late Rotas rotaID; // definido depois
  final List<Pontos> pontos;

  Direcoes({
    required this.id,
    required this.sentido,
    required this.pontos,
  });
}
