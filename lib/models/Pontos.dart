import 'Direcoes.dart';
class Pontos {
  final int id;
  final int latitude;
  final int longitude;
  final int ordem;
  late Direcoes direcaoID; // definido depois

  Pontos({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.ordem,
  });
}