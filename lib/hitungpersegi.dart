import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HitungPersegi(),
  ));
}

class HitungPersegi extends StatefulWidget {
  const HitungPersegi({super.key});

  @override
  State<HitungPersegi> createState() => _HitungPersegiState();
}

class _HitungPersegiState extends State<HitungPersegi> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromARGB(255, 102, 226, 0),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Menghitung Luas Persegi",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "masukkan panjang persegi"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "masukkan lebar persegi"),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(height: 50),
                    Text(
                      "Hasilnya adalah :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("$result",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 4, 231, 99),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        add();
                      },
                      child: Text(
                        "Hitung Luas",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
