import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lojinha/models/produto.dart';
import 'package:lojinha/screens/detalhe_produto.dart';

class Dashboard extends StatelessWidget {
  final String _tituloCoxinha = 'Coxinha ultra recheada';
  final String _tituloChurros = 'Churros crocante';
  final String _tituloAcai = 'Açaí cremoso';
  final String _tituloChopp = 'Chopp refrescante';

  final String _valorCoxinha = 'R\$4,50';
  final String _valorChurros = 'R\$2,50';
  final String _valorAcai = 'R\$8,00';
  final String _valorChopp = 'R\$6,00';

  final String _botaoDetalhes = 'Detalhes';
  final Color _buttonColor = Color.fromRGBO(184, 122, 72, 50);

  final String _imagemCoxinha = 'lib/images/coxinha.jpeg';
  final String _imagemChurros = 'lib/images/churros.jpg';
  final String _imagemAcai = 'lib/images/acai.jpg';
  final String _imagemChopp = 'lib/images/chopp.jpg';

  final String _descricacaoCoxinha =
      'Coxinha caseira, feita com ingredientes de alta qualidade, fritada sempre em '
      'óleo novo. Ultra recheada, com a casquinha sequinha. '
      'Massa de batata, peito de frango desfiado e temperado com o '
      'tempero da casa, muitooo catupiry. Para os inimigos do catupiry, temos a '
      'opção sem também. ';
  final String _descricaoChurros =
      'Churros crocante, sequinho, frito na hora, recheado e cheio de cobertura. '
      'Com ingredientes selecionados, o churros é crocante, macio e deliciosos. '
      'Coberturas de brigadeiro, nutella, doce de leite, ninho, e a novidade do mês, '
      'sabor Oreo!';
  final String _descricaoAcai = 'Açaí cremoso? Temo sim! '
      'Nosso novo açaí é cremoso, saboroso e cheio de acompanhamentos. '
      'Você pode escolher quantos acompanhamentos quiser: Morango, Uva, Manga, Abacaxi, Nutella, '
      'Chocoball, Confete, Canudinhos de chocolate, Farinha Lactea, Paçoca, Brigadeiro, Ninho, '
      'Leite Condensado, Granola, Aveia.';
  final String _descricaoChopp = 'Final do espediente? Happy Hour da firma? '
      'Então essa é sua pedida! Chopp artesanal refrescante.';

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
      body: ListView(children: [
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(_imagemCoxinha),
              ListTile(
                title: Text(
                  _tituloCoxinha,
                  style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
                ),
                subtitle: Text(
                  _valorCoxinha,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final Produto produto = Produto(
                          nome: _tituloCoxinha,
                          preco: _valorCoxinha,
                          imagemProduto: _imagemCoxinha,
                          descricao: _descricacaoCoxinha);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetalheProduto(produto)));
                    },
                    child: Text(_botaoDetalhes),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _buttonColor,
                      ),
                    ),
                  )
                ],
              ),
              Image.asset(_imagemChurros),
              ListTile(
                title: Text(
                  _tituloChurros,
                  style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
                ),
                subtitle: Text(
                  _valorChurros,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final Produto produto = Produto(
                          nome: _tituloChurros,
                          preco: _valorChurros,
                          imagemProduto: _imagemChurros,
                          descricao: _descricaoChurros);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetalheProduto(produto)));
                    },
                    child: Text(_botaoDetalhes),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _buttonColor,
                      ),
                    ),
                  )
                ],
              ),
              Image.asset(_imagemAcai),
              ListTile(
                title: Text(
                  _tituloAcai,
                  style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
                ),
                subtitle: Text(
                  _valorAcai,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final Produto produto = Produto(
                          nome: _tituloAcai,
                          preco: _valorAcai,
                          imagemProduto: _imagemAcai,
                          descricao: _descricaoAcai);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetalheProduto(produto)));
                    },
                    child: Text(_botaoDetalhes),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _buttonColor,
                      ),
                    ),
                  )
                ],
              ),
              Image.asset(_imagemChopp),
              ListTile(
                title: Text(
                  _tituloChopp,
                  style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
                ),
                subtitle: Text(
                  _valorChopp,
                  style: GoogleFonts.lato(fontSize: 15),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final Produto produto = Produto(
                          nome: _tituloChopp,
                          preco: _valorChopp,
                          imagemProduto: _imagemChopp,
                          descricao: _descricaoChopp);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetalheProduto(produto)));
                    },
                    child: Text(_botaoDetalhes),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _buttonColor,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
