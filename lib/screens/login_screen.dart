import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity, // Ocupa toda a largura
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CONTAINER LOGO
            Container(
              child: Column(
                spacing: MediaQuery.of(context).size.height * 0.02,
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.20,
                  ),

                  const Text(
                    "Right Point",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // CONTAINER SUBTITULO
            Container(
              child: Column(
                children: [
                  Text(
                    "Nunca perca seu ponto",
                    style: TextStyle(
                      color: Color(0xFF90A8C7).withOpacity(0.5),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // CONTAINER INPUTS
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,

                      // Borda quando o campo está habilitado mas não focado
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),

                      // Borda quando o campo está focado (clicado)
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),

                      // Borda quando há erro
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),

                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
