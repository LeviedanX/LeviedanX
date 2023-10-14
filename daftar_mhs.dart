import 'package:flutter/material.dart';
import 'package:flutter_mocap/mhs_satu.dart';
//import 'package:flutter_mocap/mhs_satu.dart';

class DaftarMhs extends StatelessWidget {
  const DaftarMhs({super.key});

  void detail() {}

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "Nama": "Bagus Achmad Syahputra",
        "NIM": "230605110154",
        "TTL": "Bojonegoro, 04 April 2005"
      },
      {
        "Nama": "Bagus Achmad Syahputra",
        "NIM": "230605110154",
        "TTL": "Bojonegoro, 04 April 2005"
      },
      {
        "Nama": "Bagus Achmad Syahputra",
        "NIM": "230605110154",
        "TTL": "Bojonegoro, 04 April 2005"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Mahasiswa"),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
        return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  const DetailMhs(
                          nama: 'Bagus Achmad Syahputra', 
                          nim: '230605110154', 
                          ttl: 'Bojonegoro, 04 April 2005',),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 150,
                            ),
                            Text(
                              data[index]["Nama"],
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                  ),
                            ),
                            Text(data[index]["NIM"]),
                            Text(data[index]["TTL"]),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        );              
      },)            
          );        
  }
}