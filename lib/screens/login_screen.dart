import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen redondeada en la parte superior
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/cuentas.PNG',
                    height: 150, // Imagen un poco más grande
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                // Título 'Login'
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),

                // Campo de texto para el usuario
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username, email & phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                const SizedBox(height: 15),

                // Campo de texto para la contraseña
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                const SizedBox(height: 20),

                // Botón de Login
                ElevatedButton(
                  onPressed: () {
                    // Acción del botón Login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9EB998),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFF5F5DC),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/signup'); // Navega a la pantalla de registro
                  },
                  child: const Text(
                    "Don't have an account? Sign up.",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 20),

                // Filas de íconos de redes sociales
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        color: Colors.green[50],
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/google_icon.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipOval(
                      child: Container(
                        color: Colors.green[50],
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/linkedin_icon.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipOval(
                      child: Container(
                        color: Colors.green[50],
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/facebook_icon.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
