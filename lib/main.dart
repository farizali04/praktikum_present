import 'package:flutter/material.dart';
import 'package:praktikum_2d/provider/provider_kehadiran.dart';
import 'package:praktikum_2d/views/home.dart';
// import 'package:praktikum_2d/views/tampilan_kehadiran.dart';
// import 'package:praktikum_2d/views/tampilan_riwayat.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KehadiranProvider(), // Provider untuk mengatur data kehadiran.
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green
        ),
        home: Home(), // Halaman utama aplikasi.
      ),
    );
  }
}
