import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tentang Aplikasi")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Aplikasi Mini Project Flutter ini dibuat untuk latihan dasar "
          "Flutter, termasuk form input data, navigasi halaman, dan tema otomatis.",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
