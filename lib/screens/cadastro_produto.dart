import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MoneyMaskedTextController maskedController = MoneyMaskedTextController(
        decimalSeparator: ',', thousandSeparator: '.', leftSymbol: 'R\$');

    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 226, 208, 15),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(184, 122, 72, 100),
        title: Text(
          'Lojinha da Le',
          style: GoogleFonts.rumRaisin(fontSize: 24, letterSpacing: 1),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome do produto',
                    hoverColor: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: maskedController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Valor do produto',
                    hoverColor: Colors.black,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descrição do produto',
                    hoverColor: Colors.black,
                  ),
                  maxLength: 500,
                  maxLines: 5,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Imagem',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Carregar'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(184, 122, 72, 50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                heightFactor: 3.3,
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Cadastrar'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(184, 122, 72, 50),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Cancelar'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(184, 122, 72, 50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
