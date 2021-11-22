import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lojinha/models/produto.dart';
import 'package:lojinha/screens/dashboard.dart';

class DetalheProduto extends StatefulWidget {
  final Produto produto;

  DetalheProduto(this.produto);

  @override
  _DetalheProdutoState createState() => _DetalheProdutoState();
}

class _DetalheProdutoState extends State<DetalheProduto> {
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
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.produto.imagemProduto,
            ),
          ),
          ListTile(
            title: Text(
              widget.produto.nome.toString(),
              style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
            ),
            subtitle: Text(widget.produto.descricao.toString()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  child: Text('Voltar'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(184, 122, 72, 50),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
