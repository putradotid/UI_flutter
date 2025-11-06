import 'package:flutter/material.dart';

class Pencarian extends StatelessWidget {
  const Pencarian({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search . . .",
                  contentPadding: EdgeInsets.only(top: 12)
                ),
              ),
            )),
            const SizedBox(width: 12),
            Container(
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.camera, color: Colors.white,))),
          ],
        ),
      ),
    );
  }
}