import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 226, 208, 15),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(184, 122, 72, 100),
        title: Text(
          'Lojinha da Le',
          style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Aplicativo piloto desenvolvido por Leticia Conde. '
              '\n'
              '\nPara suporte, dúvidas ou sugestões, enviar email para: '
              '\nlecondesouza@gmail.com '
              '\n'
              '\nRepositório no github: '
              '\nhttps://github.com/leeconde/lojinha',
              style: GoogleFonts.yanoneKaffeesatz(
                fontSize: 34,
                letterSpacing: 1,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
