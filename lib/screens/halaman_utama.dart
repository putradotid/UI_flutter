import 'package:flutter/material.dart';
import 'package:responsive/widgets/pencarian.dart';
import 'package:responsive/widgets/selamat_datang.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SelamatDatang(),
            Pencarian(),
          ],
        ),
      ),
    );
  }
}