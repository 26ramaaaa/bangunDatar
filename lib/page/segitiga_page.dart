import 'package:bangun_datar_rplb/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaControler= Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Segitiga Page"),),
        body: Column(
          children: [
            Image.asset("assets/Segitiga.png",height: 100,width: 100,),
            Padding(padding: const EdgeInsets.all(8.0), child: Text("Segitiga", style: TextStyle(color: Colors.black),),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Segitiga adalah bentuk bangun datar yang memiliki tiga sisi dan tiga sudut dengan panjang atau besar yang sama maupun berbeda."),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(onChanged: (value){_segitigaControler.alas = int.parse(value);
              },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Alas",
                    hintText: "Masukkan Alas",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(onChanged: (value){_segitigaControler.tinggi = int.parse(value);
              },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Tinggi",
                    hintText: "Masukkan Tinggi",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){_segitigaControler.hitungLuas();}, child: Text("Hitung Luas",style: TextStyle(color: Colors.deepOrange),))
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){_segitigaControler.hitungKeliling();}, child: Text("Hitung Keliling",style: TextStyle(color: Colors.purple),))
                ),
              ],
            ),
            Obx(() => Text(_segitigaControler.hasil.value, style: TextStyle(color: _segitigaControler.warna.value),))
          ],
        )
    );
  }
}
