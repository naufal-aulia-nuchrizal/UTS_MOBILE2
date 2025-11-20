import 'package:flutter/material.dart';

class ListInfoScreen extends StatelessWidget {
  const ListInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ["Bandung", "Jakarta", "Surabaya"];

    return Scaffold(
      appBar: AppBar(title: const Text("List Informasi")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (c, i) => ListTile(title: Text(items[i])),
      ),
    );
  }
}
