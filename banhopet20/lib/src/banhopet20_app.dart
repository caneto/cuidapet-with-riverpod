import 'package:banhopet20/src/core/ui/banhopet20_theme.dart';
import 'package:banhopet20/src/features/auth/login/login_page.dart';
import 'package:banhopet20/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class Banhopet20App extends StatelessWidget {
  const Banhopet20App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BanhoPet',
      theme: Banhopet20Theme.themeData,
      routes: {
        '/': (_) => const SplashPage(),
        '/auth/login': (_) => const LoginPage(),
      },
    );
  }
}
