import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/login_screen.dart';
import './models/Direcoes.dart';
import './models/Rotas.dart';
import './models/Pontos.dart';
void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  //DADOS SIMULADOS
  late Rotas rota1;
  late Direcoes direcao1;
  late Pontos ponto1;

  @override
  void initState() {
    super.initState();

    // Cria ponto sem direcaoID ainda
    ponto1 = Pontos(
      id: 2,
      latitude: 31231231,
      longitude: 312312,
      ordem: 1,
    );

    // Cria direcao sem rotaID ainda
    direcao1 = Direcoes(
      id: 1,
      sentido: "volta",
      pontos: [ponto1],
    );

    // Agora que direcao1 existe, podemos atribuir ao ponto
    ponto1.direcaoID = direcao1;

    // Cria rota com direcao
    rota1 = Rotas(
      id: 2,
      nome: "741",
      direcoes: [direcao1],
    );

    // Agora que rota1 existe, podemos atribuir à direcao
    direcao1.rotaID = rota1;
  }

  //DADOS SIMULADOS

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Right Point",
      theme: ThemeData(
        textTheme: GoogleFonts.jostTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/login',
      routes: {
        '/login':(context) => LoginScreen(),
      },
    );
  }
}
