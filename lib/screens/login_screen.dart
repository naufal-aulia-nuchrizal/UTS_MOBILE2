import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const floralBg = Color(0xFFFFDDE1); // pink floral soft
    const floralPrimary = Color.fromARGB(255, 239, 184, 236); // rose pastel
    const floralDark = Color(0xFF5A4B51); // teks gelap floral

    return Scaffold(
      backgroundColor: const Color.fromARGB(168, 73, 36, 74),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade100.withOpacity(0.4),
                  blurRadius: 15,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: floralDark,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Masukkan email dan password kamu",
                  style: TextStyle(color: floralDark.withOpacity(0.7)),
                ),

                const SizedBox(height: 30),

                // Email input
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: floralDark),
                    prefixIcon: const Icon(Icons.email, color: floralDark),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: floralPrimary, width: 2),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Password input
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: floralDark),
                    prefixIcon: const Icon(Icons.lock, color: floralDark),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: floralPrimary, width: 2),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Tombol Login
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 168, 93, 158),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 3,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                // Link register
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const RegisterScreen()),
                    );
                  },
                  child: Text(
                    "Belum punya akun? Register",
                    style: TextStyle(fontSize: 14, color: floralDark),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
