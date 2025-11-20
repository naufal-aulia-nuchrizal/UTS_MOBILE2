import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About App")),
      body: Center(child: Text("Aplikasi Chatbot AAA\nDibuat oleh Naufal aulia nuchrizal\n 23552011366 CID B")),
    );
  }
}
