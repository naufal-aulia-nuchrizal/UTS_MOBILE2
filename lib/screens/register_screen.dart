import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const floralBg = Color(0xFFFFDDE1); // pink floral
    const floralPrimary = Color.fromARGB(255, 74, 51, 86); // rose pastel
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
              children: [
                Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: floralDark,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Silakan isi data untuk membuat akun",
                  style: TextStyle(color: floralDark.withOpacity(0.7)),
                ),

                const SizedBox(height: 30),

                // Email
                TextField(
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

                // Password
                TextField(
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

                // Tombol Daftar
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 132, 56, 125),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 3,
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                // Back to login
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Sudah punya akun? Login",
                    style: TextStyle(color: floralDark),
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
