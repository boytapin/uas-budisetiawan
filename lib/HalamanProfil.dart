import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(
    MaterialApp(
      home: HalamanProfil(),
    )
  );
}
class HalamanProfil extends StatefulWidget {
  const HalamanProfil({super.key});

  @override
  State<HalamanProfil> createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromARGB(255, 102, 226, 0),
      ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(50),
                      child: Center(
                        child: Column(
                          children: [
                
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Nama Developer : Budi Setiawan", style: TextStyle(fontSize: 20),),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("NPM : 19710012", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Kelas : SI Nonreg Bjm", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Kontak : 081250881000", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Alamat : Rantau, Kab. Tapin", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}