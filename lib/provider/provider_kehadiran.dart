import 'package:flutter/material.dart';

class KehadiranProvider with ChangeNotifier {
  List<Map<String, dynamic>> daftarSiswa = [
    {'nama': 'Ali', 'hadir': false},
    {'nama': 'Budi', 'hadir': false},
    {'nama': 'Citra', 'hadir': false},
  ]; // Daftar siswa dengan status kehadiran.

  List<Map<String, dynamic>> riwayatKehadiran = []; // Menyimpan riwayat pencatatan.

  void ubahKehadiran(int indeks) {
    daftarSiswa[indeks]['hadir'] = !daftarSiswa[indeks]['hadir'];
    notifyListeners(); // Memberitahu UI untuk diperbarui.
  }

  void simpanKehadiran() {
    int hadir = daftarSiswa.where((siswa) => siswa['hadir']).length;
    int tidakHadir = daftarSiswa.length - hadir;

    riwayatKehadiran.add({
      'tanggal': DateTime.now(),
      'hadir': hadir,
      'tidakHadir': tidakHadir,
    });

    // Reset status kehadiran.
    for (var siswa in daftarSiswa) {
      siswa['hadir'] = false;
    }
    notifyListeners(); // Memberitahu UI untuk diperbarui.
  }
}
