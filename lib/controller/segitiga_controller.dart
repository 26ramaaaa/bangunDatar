import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SegitigaController extends GetxController{
  int alas=0;
  int tinggi=0;
  final hasil = "".obs;
  final warna=Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = alas * tinggi;
    warna.value=Colors.lightBlue;
    hasil.value = "Hasil Perhitungan Luas dari $alas X $tinggi = $hitung";
  }
  void hitungKeliling(){
    int hitung = alas + tinggi + tinggi;
    warna.value=Colors.green;
    hasil.value = "Hasil Perhitungan Keliling dari 2 X $alas + $tinggi = $hitung";
  }
}