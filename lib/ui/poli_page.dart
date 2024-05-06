// Widget dasar untuk membangun UI Flutter
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

// Mendefinisikan kelas PoliPage yang merupakan StatefulWidget.
// StatefulWidget digunakan ketika sebuah widget dapat berubah dalam keadaan (state) selama waktu tertentu.
class PoliPage extends StatefulWidget {
  // Konstruktor untuk kelas PoliPage yang menerima parameter key (opsional).
  // Dalam konstruktor ini, digunakan super(key: key) untuk meneruskan parameter key ke konstruktor kelas induk.
  const PoliPage({Key? key}) : super(key: key);

  // Meng-override/menimpa metode createState() yang mengembalikan objek _PoliPageState.
  // Metode ini bertanggung jawab untuk membuat dan menginisialisasi state dari widget PoliPage.
  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  // Meng-override metode build() untuk membangun tampilan UI dari widget _PoliPageState.
  // Metode ini mengembalikan widget Scaffold sebagai kontainer utama.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat AppBar dengan judul "Data Poli" menggunakan widget AppBar.
      appBar: AppBar(title: const Text("Data Poli")),

      // Membuat ListView sebagai kontainer untuk daftar elemen-elemen poli.
      body: ListView(
        children: [
          // Membungkus Card dengan GestureDetector untuk menambahkan fungsi onTap saat card ditekan.
          // Card ini mewakili poli anak.
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              // Membuat objek poliAnak dengan nama poli "Poli Anak" menggunakan kelas Poli.
              Poli poliAnak = Poli(namaPoli: "Poli Anak");

              // Menggunakan Navigator, kita akan berpindah ke halaman PoliDetail dengan membawa objek poliAnak sebagai parameter.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliDetail(poli: poliAnak)),
              );
            },
          ),

          // Membuat Card untuk poli lainnya seperti "Poli Kandungan", "Poli Gigi", dan "Poli THT".
          // Namun, belum ada logika onTap yang ditambahkan untuk poli-polinya.
          _buildPoliCard("Poli Kandungan"),
          _buildPoliCard("Poli Gigi"),
          _buildPoliCard("Poli THT"),
        ],
      ),
    );
  }

  // Membuat metode _buildPoliCard untuk membangun Card untuk setiap poli.
  Widget _buildPoliCard(String namaPoli) {
    return Card(
      child: ListTile(
        title: Text(namaPoli),
      ),
    );
  }
}
