import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        title: const Row(
          children: [
            // Icon(Icons.reply_outlined),
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
            Text(
              "PROFILE",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      body: SizedBox(
        width: 500,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: const AssetImage('assets/DSC_201722,jpg'),
                radius: 100,
                backgroundColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black, // Warna border
                      width: 3.0, // Lebar border
                    ),
                  ),
                ),
              ),
              // Container(
              //   width: 200,
              //   height: 200,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(10),
              //   decoration:
              //       BoxDecoration(borderRadius: BorderRadius.circular(50)),
              //   child: Image.asset('assets/atomic.jpg'),
              // ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "IT INCUBATION",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: const Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.email),
                        ),
                        Text(
                          "bagusachmadsyahputra@gmail.com",
                          style: TextStyle(fontSize: 19),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.location_city),
                        ),
                        Text(
                          "Bojonegoro",
                          style: TextStyle(fontSize: 19),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.phone),
                        ),
                        Text(
                          "082133729286",
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}