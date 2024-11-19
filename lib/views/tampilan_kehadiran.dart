import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:praktikum_2d/provider/provider_kehadiran.dart';

class TampilanKehadiran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final kehadiran = Provider.of<KehadiranProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pencatatan Kehadiran'),
        centerTitle: true,
        ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: kehadiran.daftarSiswa.length,
              itemBuilder: (context, indeks) {
                final siswa = kehadiran.daftarSiswa[indeks];
                return ListTile(
                  title: Text(siswa['nama']),
                  trailing: Checkbox(
                    value: siswa['hadir'],
                    onChanged: (value) => kehadiran.ubahKehadiran(indeks),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: kehadiran.daftarSiswa.isEmpty
                  ? null
                  : kehadiran.simpanKehadiran,
              child: Text('Simpan Kehadiran'),
            ),
          ),
        ],
      ),
    );
  }
}
