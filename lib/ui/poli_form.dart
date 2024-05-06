// Import library yang diperlukan
import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi komponen dan widget UI untuk membangun aplikasi Flutter.
import '../model/poli.dart'; // Mengimpor file model/poli.dart yang berisi definisi kelas Poli.
import '../ui/poli_detail.dart'; // Mengimpor file ui/poli_detail.dart yang berisi halaman PoliDetail.

// Deklarasi kelas PoliForm
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  _PoliFormState createState() => _PoliFormState();
}

// Deklarasi kelas _PoliFormState sebagai state dari PoliForm
class _PoliFormState extends State<PoliForm> {
  // Membuat GlobalKey untuk mengakses state dari Form.
  final _formKey = GlobalKey<FormState>();

  // Membuat TextEditingController untuk mengelola inputan teks pada TextField.
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menampilkan AppBar dengan judul "Tambah Poli".
      appBar: AppBar(
        title: const Text("Tambah Poli"),
      ),
      // Membuat scrolling body dengan Form.
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Mengatur GlobalKey pada Form.
          child: Column(
            children: [
              // Menampilkan field untuk menginputkan nama poli.
              _buildNamaPoliField(),
              // Membuat jarak vertikal sebesar 20 piksel.
              SizedBox(height: 20),
              // Menampilkan tombol "Simpan".
              _buildSimpanButton(),
            ],
          ),
        ),
      ),
    );
  }

  // Method untuk menampilkan field nama poli.
  Widget _buildNamaPoliField() {
    return TextField(
      // Mengatur label teks untuk TextField.
      decoration: const InputDecoration(
        labelText: "Nama Poli",
      ),
      // Menghubungkan TextEditingController dengan TextField.
      controller: _namaPoliCtrl,
    );
  }

  // Method untuk menampilkan tombol simpan.
  Widget _buildSimpanButton() {
    return ElevatedButton(
      // Menambahkan aksi tombol "Simpan".
      onPressed: () {
        final poli = Poli(namaPoli: _namaPoliCtrl.text); // Membuat objek Poli dengan nama poli yang diambil dari inputan teks.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        ); // Menavigasi ke halaman PoliDetail dengan objek Poli yang baru dibuat.
      },
      // Menampilkan teks "Simpan" di dalam tombol.
      child: const Text("Simpan"),
    );
  }
}