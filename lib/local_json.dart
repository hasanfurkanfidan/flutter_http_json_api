
import 'package:flutter/material.dart';
import 'dart:convert';
class LocalJson extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LocalJsonState();
  }

}

class _LocalJsonState extends State<LocalJson> {
  List tumArabalar;
  initState(){
    veriKaynaginiOku().then((gelenArabaListesi){
      setState(() {
        tumArabalar=gelenArabaListesi;
      });

    });
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
     return Scaffold(
      appBar: AppBar(
        title: Text("Local Json"),
      ),
      body:ListView.builder(itemCount: tumArabalar.length,itemBuilder:(context,index,){
      return ListTile(
        title:Text(tumArabalar[index]["araba_adi"]) ,
        subtitle:Text(tumArabalar[index]["ülke"]) ,
      );
      })
    );
  }
Future<List> veriKaynaginiOku() async{
var gelenJson =await  DefaultAssetBundle.of(context).loadString("assets/data/araba.json");
var arabaListesi = jsonDecode(gelenJson);
return arabaListesi;
 }
}