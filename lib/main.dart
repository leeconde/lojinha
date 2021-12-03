import 'package:flutter/material.dart';
import 'package:lojinha/screens/cadastro_produto.dart';
import 'package:lojinha/screens/menu_admin.dart';
import 'package:lojinha/screens/menu_principal.dart';
import 'package:lojinha/screens/splash_screen_activity.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CadastroProduto(),
  ));
}
