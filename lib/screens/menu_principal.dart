import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lojinha/screens/dashboard.dart';
import 'package:lojinha/screens/menu_admin.dart';
import 'package:lojinha/screens/sobre.dart';

class MenuPrincipal extends StatelessWidget {
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Sobre()));
            },
          ),
        ],
      ),
      floatingActionButton: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size.fromWidth(130)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(184, 122, 72, 100)),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MenuAdmin()));
              },
              child: Text(
                'Admin',
                style: GoogleFonts.lato(fontSize: 24, letterSpacing: 1),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(130),
                ),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(184, 122, 72, 100)),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text(
                'Usuário',
                style: GoogleFonts.lato(fontSize: 24, letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
