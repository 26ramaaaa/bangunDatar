import 'package:bangun_datar_rplb/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangController _PersegiPanjangControler= Get.put(PersegiPanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Persegi Panjang Page"),),
        body: Column(
          children: [
            Image.asset("assets/persegipanjang.png",height: 100,width: 100,),
            Padding(padding: const EdgeInsets.all(8.0), child: Text("persegi panjang", style: TextStyle(color: Colors.black),),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar."),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(onChanged: (value){_PersegiPanjangControler.panjang = int.parse(value);
              },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Panjang",
                    hintText: "Masukkan Panjang",
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
              child: TextFormField(onChanged: (value){_PersegiPanjangControler.lebar = int.parse(value);
              },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Lebar",
                    hintText: "Masukkan Lebar",
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
                    child: ElevatedButton(onPressed: (){_PersegiPanjangControler.hitungLuas();}, child: Text("Hitung Luas",style: TextStyle(color: Colors.deepOrange),))
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){_PersegiPanjangControler.hitungKeliling();}, child: Text("Hitung Keliling",style: TextStyle(color: Colors.purple),))
                ),
              ],
            ),
            Obx(() => Text(_PersegiPanjangControler.hasil.value, style: TextStyle(color: _PersegiPanjangControler.warna.value),))
          ],
        )
    );
  }
}
