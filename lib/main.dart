import 'package:flutter/material.dart';
import 'package:responsive/screens/halaman_keranjang.dart';
import 'screens/halaman_utama.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanKeranjang(),
    );
  }
}