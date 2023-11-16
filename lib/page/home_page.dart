import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Home Page",style: TextStyle(
          color: Colors.black
        )),
        backgroundColor: Color(0xFFFFF400),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.png",title: "Persegi",)),
              Expanded(child: CustomMenu(imageAsset: "assets/persegipanjang.png",title: "Persegi Panjang",)),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset: "assets/Segitiga.png",title: "Segitiga",),
              CustomMenu(imageAsset: "assets/Segitiga.png",title: "Segitigs",),
            ],
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      color: Colors.yellow,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset),
            Text(title),
          ],
        ));
  }
}
