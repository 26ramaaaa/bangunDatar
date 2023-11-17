
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  RxBool isHitungLuas = true.obs;
  RxBool isHitungKeliling = true.obs;
  int panjang = 0;
  int lebar = 0;

  final hasil = "".obs;
  final warna=Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = panjang * lebar;
    warna.value=Colors.lightBlueAccent;
    hasil.value ="Hasil Perhitungan Luas $panjang X $lebar =$hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung =2 * (panjang + lebar);
    warna.value=Colors.green;
    hasil.value ="Hasil Perhitungan Keliling 2 * ($panjang + $lebar)  =$hitung";
    isHitungKeliling.value = false;
  }
}