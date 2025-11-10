import 'package:flutter/material.dart';
import 'screens/halaman_utama.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menggunakan tema warna merah untuk tombol aplikasi (optional)
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade400,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.red.shade400),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
    );
  }
}