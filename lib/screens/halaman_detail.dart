import 'package:flutter/material.dart';
import 'package:responsive/data_source.dart';
import 'package:responsive/screens/halaman_keranjang.dart';

class HalamanDetail extends StatefulWidget {
  final String namamenu;
  final String label1;
  final Color warnalabel1;
  final String label2;
  final Color warnalabel2;
  final String deskripsi;
  final double harga;
  final String gambar;
  
  const HalamanDetail({super.key, required this.namamenu, required this.label1, required this.warnalabel1, required this.label2, required this.warnalabel2, required this.deskripsi, required this.harga, required this.gambar});

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Detail'),
      ),
      body: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.gambar), 
                fit: BoxFit.cover,
              )
            ),
          ),
          Text(widget.namamenu, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          Text(widget.harga.toString(), style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
          Expanded(child: Text(widget.deskripsi, style: TextStyle(fontSize: 14), textAlign: TextAlign.center,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                daftarBelanjaList.add({
                  "namamenu": widget.namamenu,
                  "harga": widget.harga,
                  "gambar": widget.gambar,
                  "jmlitem": 1,
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKeranjang(),));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.white,),
                    Text('  Tambah ke Keranjang', style: TextStyle(color: Colors.white, fontSize: 18),)
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}