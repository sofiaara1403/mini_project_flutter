import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController teleponController = TextEditingController();

  String? hasilNama;
  String? hasilEmail;
  String? hasilTelepon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🌈 Background lembut warna pastel
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFD1DC),
                  Color(0xFFB5EAEA),
                  Color(0xFFEDF6E5),
                  Color(0xFFFDE2E4),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // 🍬 Hiasan lingkaran warna-warni
          ...List.generate(10, (index) {
            final colors = [
              Colors.pinkAccent.shade100,
              Colors.blueAccent.shade100,
              Colors.purpleAccent.shade100,
              Colors.amberAccent.shade100,
              Colors.cyanAccent.shade100
            ];
            final color = colors[index % colors.length];
            final size = (50 + (index * 10)).toDouble();
            final left = (index * 60) % MediaQuery.of(context).size.width;
            final top = (index * 80) % MediaQuery.of(context).size.height;

            return Positioned(
              left: left,
              top: top,
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
              ),
            );
          }),

          // 🧁 Form Utama
          Center(
            child: Container(
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.all(20),
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 🍦 Ganti ikon jadi cupcake
                  const Icon(Icons.icecream, color: Colors.pinkAccent, size: 50),
                  const SizedBox(height: 10),
                  const Text(
                    "Form Data Pengguna 🍭",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7A3E9D),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Input nama
                  TextField(
                    controller: namaController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person, color: Colors.purple),
                      labelText: 'Nama',
                      filled: true,
                      fillColor: Colors.pink[50],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Input email
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email, color: Colors.blue),
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.blue[50],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Input telepon
                  TextField(
                    controller: teleponController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone, color: Colors.pink),
                      labelText: 'Telepon',
                      filled: true,
                      fillColor: Colors.purple[50],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Tombol simpan
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        hasilNama = namaController.text;
                        hasilEmail = emailController.text;
                        hasilTelepon = teleponController.text;
                      });
                    },
                    icon: const Icon(Icons.favorite, color: Colors.white),
                    label: const Text("Simpan"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9C6ADE),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 8,
                      shadowColor: Colors.purpleAccent,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Output hasil
                  if (hasilNama != null)
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink[50]!,
                            Colors.blue[50]!,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Nama: $hasilNama\nEmail: $hasilEmail\nTelepon: $hasilTelepon",
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
