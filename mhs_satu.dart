import 'package:flutter/material.dart';

class DetailMhs extends StatelessWidget {
  final String nama;
  final String nim;
  final String ttl;
  const DetailMhs({super.key, required this.nama,required this.nim,required this.ttl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Mahasiswa")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 150,
            ),
            const Text(
              "BAGUS ACHMAD SYAHPUTRA",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text("230605110154"),
            const Text("Bojonegoro, 04 April 2005"),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Kembali")),
            )
          ],
        ),
      ),
    );
  }
}
