import 'package:flutter/material.dart';
import 'package:lojinha/screens/dashboard.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenActivity extends StatefulWidget {
  @override
  _SplashScreenActivityState createState() => _SplashScreenActivityState();
}

class _SplashScreenActivityState extends State<SplashScreenActivity> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Dashboard(),
      imageBackground: Image.asset('lib/images/logo_lojinha.png').image,
      loadingText: Text(
        'Carregando...',
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoMono',
        ),
      ),
      loaderColor: Colors.white,
    );
  }
}
