import 'package:flutter/material.dart';
import 'package:responsive/data_source.dart';

class Terlaris extends StatelessWidget {
  const Terlaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Terlaris", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          Wrap(children: terlarisList.map((e) => 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(e, style: TextStyle(color: Colors.black),),
                )),
            )).toList()),
        ],
      ),
    );
  }
}