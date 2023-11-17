
import 'package:bangun_datar_rplb/page/lingkaran_page.dart';
import 'package:bangun_datar_rplb/page/persegipanjang_page.dart';
import 'package:bangun_datar_rplb/page/segitiga_page.dart';
import 'package:flutter/material.dart';
import 'persegi_page.dart';

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
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: CustomMenu(imageAsset: "assets/Persegi.png",title: "Persegi",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PersegiPage()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: CustomMenu(imageAsset: "assets/persegipanjang.png",title: "Persegi Panjang",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PersegiPanjangPage()));
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: CustomMenu(imageAsset: "assets/Segitiga.png",title: "Segitiga",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SegitigaPage()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: CustomMenu(imageAsset: "assets/lingkaran.png",title: "Lingkaran",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LingkaranPage()));
                  },
                ),
              ),
            ],
          ),
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
            Image.asset(imageAsset, height: 100, width: 100,),
            Text(title),
          ],
        ));
  }
}
