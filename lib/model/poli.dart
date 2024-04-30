// Mendefinisikan kelas Poli yang memanggil entitas poli
class Poli {
  // Mendefinisikan variabel id dengan tipe data String?. Tanda tanya (?) menunjukkan bahwa variabel tersebut dapat memiliki nilai null
  String? id;
  // Mendefinisikan variabel namaPoli dengan tipe data String. Variabel ini akan menyimpan nama poli
  String namaPoli;
// Mendefinisikan konstruktor Poli. Konstruktor ini menerima dua parameter: id dan namaPoli. Dalam konstruktor ini, kita menggunakan sintaks required untuk menandakan bahwa namaPoli harus disertakan saat membuat objek Poli, sedangkan id dapat dikosongkan
  Poli({this.id, required this.namaPoli});
}
