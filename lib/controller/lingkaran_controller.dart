import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int r=0;
  final hasil = "".obs;
  final warna=Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 3.14 * r * r ;
    warna.value=Colors.lightBlue;
    hasil.value = "Hasil Perhitungan Luas dari 3.14 X $r X $r= $hitung";
  }
  void hitungKeliling(){
    double hitung = 2 * 3.14 * r;
    warna.value=Colors.green;
    hasil.value = "Hasil Perhitungan Keliling dari 2 X 3.14 X $r = $hitung";
  }
}