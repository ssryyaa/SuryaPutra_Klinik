// Import package flutter/material.dart adalah package yang berisi berbagai komponen dan widget UI untuk membangun aplikasi Flutter.
import 'package:flutter/material.dart';

// Import sidebar.dart adalah file yang berisi implementasi widget Sidebar yang digunakan dalam kode ini.
import '../widget/sidebar.dart';

// Kelas Beranda merupakan StatelessWidget yang digunakan untuk membuat halaman Beranda.
class Beranda extends StatelessWidget {
  const Beranda({Key? key});

  @override
  Widget build(BuildContext context) {
    // Scaffold adalah widget yang menyediakan struktur dasar untuk halaman Flutter.
    return Scaffold(
      // Drawer adalah widget yang digunakan untuk menampilkan menu Sidebar pada aplikasi.
      drawer: Sidebar(),
      // AppBar adalah widget yang menampilkan bilah atas pada aplikasi dengan judul "Beranda".
      appBar: AppBar(title: Text("Beranda")),
      // Body adalah widget yang menampilkan konten utama pada halaman Beranda, di sini kita menampilkan teks "Selamat Datang".
      body: Center(
        child: Text("Selamat Datang"),
      ),
    );
  }
}