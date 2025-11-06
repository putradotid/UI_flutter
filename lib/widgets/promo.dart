import 'package:flutter/material.dart';
import 'package:responsive/data_source.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Promo", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          Expanded(child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: daftarMenuList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: daftarMenuList[index]["warna"],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Gratis ${daftarMenuList[index]["kategori"]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Untuk Pembelian diata 200rb"),
                  ],
                ),
              ),
            ),
          ),
          ),
          ),
        ],
      ),
    );
  }
}