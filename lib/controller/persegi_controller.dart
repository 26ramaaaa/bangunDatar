import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi=0;
  final hasil = "".obs;
  final warna=Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi * sisi;
    warna.value=Colors.lightBlue;
    hasil.value = "Hasil Perhitungan Luas dari $sisi X $sisi = $hitung";
  }
  void hitungKeliling(){
    int hitung = sisi * 4;
    warna.value=Colors.green;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi X 4 = $hitung";
  }
}