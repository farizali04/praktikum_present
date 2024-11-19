import 'package:flutter/material.dart';
import 'tampilan_kehadiran.dart';
import 'tampilan_riwayat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _halamanTerpilih = 0; // Menyimpan indeks halaman yang aktif.

  final List<Widget> _halaman = [
    TampilanKehadiran(), // Halaman untuk mencatat kehadiran.
    TampilanRiwayat(),    // Halaman untuk melihat riwayat.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _halaman[_halamanTerpilih], // Menampilkan halaman yang dipilih.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _halamanTerpilih,
        onTap: (indeks) {
          setState(() {
            _halamanTerpilih = indeks;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Pencatatan'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Riwayat'),
        ],
      ),
    );
  }
}