import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: HitungLingkaran(),
  ));
}
class HitungLingkaran extends StatefulWidget {
  const HitungLingkaran({super.key});

  @override
  State<HitungLingkaran> createState() => _HitungLingkaranState();
}

class _HitungLingkaranState extends State<HitungLingkaran> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double? result=0;
  add(){
    setState((){
      const phi = 3.14;
      int num2 = int.parse(controller2.text);
      result = phi * num2 * num2;
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
                "Menghitung Luas Lingkaran",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                child: Column(
                  children: [
                    
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "masukkan jari-jari lingkaran"),
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