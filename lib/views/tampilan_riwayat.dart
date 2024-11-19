import 'package:flutter/material.dart';
// import 'package:praktikum_2d/models/data_layer.dart';
import 'package:provider/provider.dart';
import 'package:praktikum_2d/provider/provider_kehadiran.dart';
import 'package:intl/intl.dart';

class TampilanRiwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final riwayat = Provider.of<KehadiranProvider>(context).riwayatKehadiran;

    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Kehadiran'),
        centerTitle: true,
        ),
      body: riwayat.isEmpty 
      ? const Center (child : Text("Tidak ada riwayat kehadiran"))
      :
      ListView.builder(
        itemCount: riwayat.length,
        itemBuilder: (context, indeks) {
          final data = riwayat[indeks];
          return ListTile(
            title: Text(DateFormat('dd MMM yyyy').format(data['tanggal'])),
            subtitle: Text('Hadir: ${data['hadir']}, Tidak Hadir: ${data['tidakHadir']}'),
          );
        },
      ),
    );
  }
}
