import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
//Kode ini mengimpor pustaka Flutter yang diperlukan dan juga mengimpor file poli.dart yang berisi definisi kelas Poli, serta poli_detail.dart yang akan digunakan untuk menampilkan detail poli
class PoliItem extends StatelessWidget { //elas PoliPage didefinisikan sebagai StatefulWidget. StatefulWidget digunakan ketika sebuah widget dapat berubah dalam keadaan (state) selama waktu tertentu. Konstruktor PoliPage menerima parameter key yang bersifat opsional
  final Poli poli;

  const PoliItem({Key? key, required this.poli}) : super(key: key);

  @override
  Widget build(BuildContext context) { //Metode createState() digunakan untuk membuat dan menginisialisasi state dari widget PoliPage. Pada contoh ini, metode ini mengembalikan objek _PoliPageState
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${poli.namaPoli}"),         //Kelas _PoliPageState merupakan state dari widget PoliPage. Di dalamnya, kita meng-override metode build() untuk membangun tampilan UI dari state _PoliPageState. Metode ini mengembalikan sebuah widget Scaffold sebagai kontainer utama.Di dalam Scaffold, terdapat appBar yang menggunakan widget AppBar dengan judul "Data Poli". Selanjutnya, terdapat body yang menggunakan ListView sebagai kontainer untuk menampilkan daftar elemen-elemen poli.Pada contoh ini, terdapat empat Card yang mewakili empat poli yang berbeda. Namun, hanya Card pertama yang memiliki logika onTap yang ditambahkan. Ketika Card tersebut ditekan, akan dibuat objek poliAnak dengan nama poli "Poli Anak" menggunakan kelas Poli. Selanjutnya, dengan menggunakan Navigator, kita akan berpindah ke halaman PoliDetail dengan membawa objek poliAnak sebagai parameter
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
    );
  }
}