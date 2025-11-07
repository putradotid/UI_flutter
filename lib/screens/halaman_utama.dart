import 'package:flutter/material.dart';
import 'package:responsive/data_source.dart';
import 'package:responsive/widgets/pencarian.dart';
import 'package:responsive/widgets/promo.dart';
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
            Promo(),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Kategory", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: daftarMenuList.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      tampilkanDaftarMenu(
                        context, 
                        kategori: daftarMenuList[index]["kategori"], 
                        menuList: daftarMenuList[index]["menuList"], 
                        warna: daftarMenuList[index]["warna"]
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: daftarMenuList[index]["warna"],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                daftarMenuList[index]["kategori"], 
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage(daftarMenuList[index]["gambar"]))
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
  // membuat pop up menu
  void tampilkanDaftarMenu(
    BuildContext context,
    {
    required kategori,
    required List<Map<String, dynamic>> menuList,
    required Color warna,
  }) {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(kategori),
        content: SizedBox(
          height: 300,
          width: 500,
          child: GridView.builder(
            itemCount: menuList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 2/3,
              ), 
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: warna,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FittedBox(child: Text(menuList[index]["namamenu"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage(menuList[index]["gambar"]))
                        ),
                      ),
                      Text(menuList[index]["harga"].toString(), style: TextStyle(fontSize: 12),),
                      IconButton(onPressed: () {
                        // aksi ketika tombol beli ditekan
                      }, icon: Icon(
                        Icons.shopping_cart_checkout),
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}