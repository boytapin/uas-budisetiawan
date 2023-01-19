import 'package:flutter/material.dart';
import 'package:flutter_application_1/HalamanProfil.dart';
import 'package:flutter_application_1/hitunglingkaran.dart';
import 'package:flutter_application_1/hitungpersegi.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromARGB(255, 102, 226, 0),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HitungPersegi()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 102, 226, 0),
                      minimumSize:
                          Size(300, 70) // put the width and height you want
                      ),
                  child: Column(
                    children: [
                      Text("HITUNG LUAS PERSEGI",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("Pilih Untuk Mulai Menghitung Luas Peersegi",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HitungLingkaran()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 102, 226, 0),
                      minimumSize:
                          Size(300, 70) // put the width and height you want
                      ),
                  child: Column(
                    children: [
                      Text("HITUNG LUAS LINGARAN",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("Pilih Untuk Mulai Menghitung Luas Lingkaran",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HalamanProfil()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 102, 226, 0),
                      minimumSize:
                          Size(300, 70) // put the width and height you want
                      ),
                  child: Column(
                    children: [
                      Text("PROFIL DEVELOPER",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("Pilih Untuk Melihat Profil Developer",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
