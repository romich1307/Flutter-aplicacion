import 'package:firebase_core/firebase_core.dart'; // Importar Firebase core
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart'; // Importa LoginScreen
import 'screens/signup_screen.dart'; // Importa SignUpScreen

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Asegura la inicialización de widgets
  await Firebase.initializeApp(); // Inicializa Firebase
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
