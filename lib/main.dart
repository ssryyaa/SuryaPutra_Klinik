// widget dasar untuk membangun ui flutter
import 'package:flutter/material.dart';
import '/ui/poli_page.dart';

// Fungsi main() adalah titik masuk utama untuk aplikasi Flutter. Di sini, kita menjalankan aplikasi dengan memanggil runApp() dan memberikan instance dari MyApp sebagai parameter
void main() => runApp(MyApp());

// Mendefinisikan kelas MyApp yang merupakan StatelessWidget. StatelessWidget digunakan ketika sebuah widget tidak berubah dalam keadaan (state) selama waktu tertentu
class MyApp extends StatelessWidget {
  // Meng-override/menimpa metode build() untuk membangun tampilan UI dari widget MyApp. Metode ini mengembalikan MaterialApp sebagai kontainer utama
  @override
  Widget build(BuildContext context) {
    //  Membuat instance dari MaterialApp yang digunakan untuk mengatur konfigurasi aplikasi Flutter
    return MaterialApp(
      // judul aplikasi
      title: 'Klinik APP',
      // Mengatur debugShowCheckedModeBanner menjadi false untuk menyembunyikan banner debug di sudut kanan atas aplikasi
      debugShowCheckedModeBanner: false,
      // Menentukan halaman awal aplikasi dengan menggunakan instance dari PoliPage sebagai nilai home
      home: PoliPage(),
      // Mengembalikan MaterialApp sebagai hasil dari metode build()
    );
  }
}
