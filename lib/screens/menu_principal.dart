import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lojinha/screens/dashboard.dart';
import 'package:lojinha/screens/menu_admin.dart';
import 'package:lojinha/screens/sobre.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  final TextEditingController _senhaController = TextEditingController();

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
                _showDialog();
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

  void _showDialog() {
    Widget cancelarButton = ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('Cancelar'),
    );

    Widget confirmarButton = ElevatedButton(
      onPressed: () {
        if (_senhaController.text == '1010') {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MenuAdmin()));
        }
        if (_senhaController.text != '1010') {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Senha incorreta')));
        }
      },
      child: Text('Confirmar'),
    );

    showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text('Senha de admin'),
          content: TextField(
            controller: _senhaController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
            keyboardType: TextInputType.number,
          ),
          actions: [
            confirmarButton,
            cancelarButton,
          ],
        );
      },
    );
  }
}
