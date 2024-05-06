import 'package:flutter/material.dart';

// Kelas Login merupakan StatefulWidget yang digunakan untuk membuat halaman Login.
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  // Metode createState digunakan untuk membuat instance dari _LoginState.
  @override
  _LoginState createState() => _LoginState();
}

// Kelas _LoginState merupakan State dari Login yang berisi implementasi halaman Login.
class _LoginState extends State<Login> {
  // Membuat GlobalKey untuk FormState.
  final _formKey = GlobalKey<FormState>();
  // Membuat TextEditingController untuk mengontrol nilai input pada TextFormField.
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Scaffold adalah struktur dasar untuk tata letak halaman Flutter.
    return Scaffold(
      // SingleChildScrollView digunakan untuk mengizinkan scrolling jika konten halaman melebihi ukuran layar.
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // Mengambil tinggi layar dari device.
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Menampilkan judul halaman "Login Admin" dengan gaya teks tertentu.
                Text(
                  "Login Admin",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                // Memberikan jarak vertikal antara judul dan input fields.
                SizedBox(height: 50),
                // Menampilkan Form dengan GlobalKey _formKey.
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      // Mengatur lebar container sesuai dengan lebar layar.
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          // Memanggil widget _usernameTextField() untuk menampilkan input field untuk username.
                          _usernameTextField(),
                          // Memberikan jarak vertikal antara input field username dan password.
                          SizedBox(height: 20),
                          // Memanggil widget _passwordTextField() untuk menampilkan input field untuk password.
                          _passwordTextField(),
                          // Memberikan jarak vertikal antara input field password dan tombol login.
                          SizedBox(height: 40),
                          // Memanggil widget _tombolLogin() untuk menampilkan tombol login.
                          _tombolLogin(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _usernameTextField() digunakan untuk menampilkan TextFormField untuk input field username.
  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
    );
  }

  // Widget _passwordTextField() digunakan untuk menampilkan TextFormField untuk input field password.
  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      obscureText: true,
      controller: _passwordCtrl,
    );
  }

  // Widget _tombolLogin() digunakan untuk menampilkan tombol login.
  Widget _tombolLogin() {
    return Container(
      // Mengatur lebar container sesuai dengan lebar layar.
      width: MediaQuery.of(context).size.width