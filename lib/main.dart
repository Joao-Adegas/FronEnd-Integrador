import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class Points {
  final String title;
  final String description;
  final List<String> technologies;
  final String? imageUrl; // opcional

  Points({
    required this.title,
    required this.description,
    required this.technologies,
    this.imageUrl,
  });
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sdcsdcsd",
      theme: ThemeData(
        textTheme: GoogleFonts.jostTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04 ),
            child: Column(
              children: [
                /* BODY */ 

              //HEADER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15), // Spacer
                        Text(
                          "Seja bem vindo(a)",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            
                          ),
                        ),
                        Text(
                          "Ariane",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Image.asset('/images/config.png',width: MediaQuery.of(context).size.width*0.05,height: MediaQuery.of(context).size.width*0.05,),
                  ],
                ),                  
              //HEADER

              //MAIN

                //BUS IMAGE
                Container(
                  width: MediaQuery.of(context).size.width*0.70,
                  child: Image.asset(
                    'images/imagemPrincipal.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.contain, // ou BoxFit.contain, dependendo do efeito desejado
                  ),
                ),
                //BUS IMAGE

                //CONTAINER REGISTRAR PONTO
                Container(
                  width: MediaQuery.of(context).size.width*1,
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(188, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    spacing: MediaQuery.of(context).size.height*0.01,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Para onde vamos hoje?",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.bold ) , ),
                      Text("Registrar um novo ponto e viajar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      TextButton(onPressed: (){}, child: Text("Registrar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),style: TextButton.styleFrom(
                        backgroundColor:Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(7)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,vertical: MediaQuery.of(context).size.width*0.03)),
                      ),
                    ],
                  ),
                ),
                //CONTAINER REGISTRAR PONTO 


                //CONTAINER PONTOS SALVOS
                Container(
                  child: Column(
                    children: [

                      // TITULO CONTAINER PONSTOS SALVOS
                      Container(
                        child: Row(
                          spacing:MediaQuery.of(context).size.width*0.02 ,
                          children: [
                            Text("Pontos Salvos",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03)),
                            Image.asset('images/favoritos.png')
                          ],
                        ),
                      ),
                      // TITULO CONTAINER PONSTOS SALVOS

                      //CONTAINER PONTOS SALVOS 
                      Container(
                        child: Column(
                          children: [
                            // FAZER LISTA DE PONTOS PRA MAPEAR
                          ],
                        ),
                      )
                      //CONTAINER PONTOS SALVOS 

                    ],
                  ),
                )
                //CONTAINER PONTOS SALVOS   

              //MAIN
                  
              ],),

            /* BODY */ 
          ),
        ),
      ),
    );
  }
}
