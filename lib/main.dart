import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart'; // Importa LoginScreen
import 'screens/signup_screen.dart'; // Importa SignUpScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => const HomeScreen(), // Pantalla inicial
        '/login': (context) => const LoginScreen(), // LoginScreen
        '/signup': (context) => const SignUpScreen(), // SignUpScreen
      },
    );
  }
}
