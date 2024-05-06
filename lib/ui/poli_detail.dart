import 'package:flutter/material.dart'; // Berisi widget-widget UI dasar Flutter
import '../model/poli.dart';

class PoliDetail extends StatefulWidget {
  // Merupakan StatefulWidget. StatefulWidget digunakan ketika sebuah widget dapat berubah dalam keadaan (state) selama waktu tertentu
  final Poli poli;

  const PoliDetail({Key? key, required this.poli}) : super(key: key); // Variabel ini akan digunakan untuk menampilkan data poli yang sedang ditampilkan detailnya

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    // Kontainer untuk elemen-elemen dalam tampilan detail poli
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Poli")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Nama Poli: ${widget.poli.namaPoli}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                // Tombol tersebut menggunakan warna latar belakang yang berbeda (hijau dan merah) menggunakan ElevatedButton.styleFrom
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Hapus"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
