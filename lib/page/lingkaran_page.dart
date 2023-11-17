import 'package:bangun_datar_rplb/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});
  final LingkaranController _lingkaranController= Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Lingkaran Page"),),
        body: Column(
          children: [
            Image.asset("assets/lingkaran.png",height: 100,width: 100,),
            Padding(padding: const EdgeInsets.all(8.0), child: Text("Lingkaran", style: TextStyle(color: Colors.black),),
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
              child: TextFormField(onChanged: (value){_lingkaranController.r = int.parse(value);
              },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Jari-Jari",
                    hintText: "Masukkan Jari-Jari",
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
                    child: ElevatedButton(onPressed: (){_lingkaranController.hitungLuas();}, child: Text("Hitung Luas",style: TextStyle(color: Colors.deepOrange),))
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){_lingkaranController.hitungKeliling();}, child: Text("Hitung Keliling",style: TextStyle(color: Colors.purple),))
                ),
              ],
            ),
            Obx(() => Text(_lingkaranController.hasil.value, style: TextStyle(color: _lingkaranController.warna.value),))
          ],
        )
    );
  }
}
