import 'package:flutter/material.dart';
import 'package:responsive/data_source.dart';

class HalamanKeranjang extends StatefulWidget {
  const HalamanKeranjang({super.key});

  @override
  State<HalamanKeranjang> createState() => _HalamanKeranjangState();
}

class _HalamanKeranjangState extends State<HalamanKeranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang Belanja"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: daftarBelanjaList.length,
            itemBuilder: (context, index) => Card(
              child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage(daftarBelanjaList[index]["gambar"]), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(daftarBelanjaList[index]["namamenu"]),
                      Text(daftarBelanjaList[index]["harga"].toString()),
                    ],
                  ),
                ),
                IconButton(onPressed: () {
                  setState(() {
                    daftarBelanjaList[index]["jmlitem"]--;
                  });
                }, icon: Icon(Icons.remove)),
                Text(daftarBelanjaList[index]["jmlitem"].toString()),
                IconButton(onPressed: () {
                  setState(() {
                    daftarBelanjaList[index]["jmlitem"]++;
                  });
                }, icon: Icon(Icons.add)),
              ],
                    ),
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bayar ${totalHarga()}", 
                  style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ]
      )
    );
  }
  
  totalHarga() {
    double total = 0;
    for (var i = 0; i < daftarBelanjaList.length; i++) {
      total += daftarBelanjaList[i]["harga"] * daftarBelanjaList[i]["jmlitem"];
    }
    return total;
  }
}