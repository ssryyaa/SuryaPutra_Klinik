// widget dasar untuk membangun ui flutter
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

// Mendefinisikan kelas PoliPage yang merupakan StatefulWidget. StatefulWidget digunakan ketika sebuah widget dapat berubah dalam keadaan (state) selama waktu tertentu
class PoliPage extends StatefulWidget {
  // Konstruktor untuk kelas PoliPage yang menerima parameter key (opsional). Dalam konstruktor ini, digunakan super(key: key) untuk meneruskan parameter key ke konstruktor kelas induk
  const PoliPage({Key? key}) : super(key: key);
// Meng-override/menimpa metode createState() yang mengembalikan objek _PoliPageState. Metode ini bertanggung jawab untuk membuat dan menginisialisasi state dari widget PoliPage.
  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  // Meng-override metode build() untuk membangun tampilan UI dari widget _PoliPageState. Metode ini mengembalikan widget Scaffold sebagai kontainer utama
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat AppBar dengan judul "Data Poli" menggunakan widget AppBar
      appBar: AppBar(title: const Text("Data Poli")),
      // Membuat ListView sebagai kontainer untuk daftar elemen-elemen poli
      body: ListView(
        children: [
          // Membungkus Card dengan GestureDetector untuk menambahkan fungsi onTap saat card ditekan. Card ini mewakili poli anak. Ketika card ini ditekan, akan dibuat objek poliAnak dengan nama poli "Poli Anak" menggunakan kelas Poli. Selanjutnya, menggunakan Navigator, kita akan berpindah ke halaman PoliDetail dengan membawa objek poliAnak sebagai parameter
          GestureDetector(
            // Membuat Card dengan ListTile untuk mewakili beberapa poli lainnya seperti "Poli Kandungan", "Poli Gigi", dan "Poli THT". Namun, belum ada logika onTap yang ditambahkan untuk poli-polinya
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(namaPoli: "Poli Anak");
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliAnak)),
              );
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
            ),
          ),
        ],
      ),
    );
  }
}

// Dengan demikian, kode tersebut menghasilkan halaman PoliPage yang menampilkan daftar poli dengan poli anak sebagai item yang dapat diklik untuk melihat detailnya. Poli lainnya hanya ditampilkan sebagai daftar tanpa logika khusus saat diklik