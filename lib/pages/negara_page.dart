import 'package:dicoding_project/models/asia.dart';
import 'package:flutter/material.dart';

class NegaraPage extends StatelessWidget{
  final Asia itemArgs;

  NegaraPage({required this.itemArgs});

  @override 
  Widget build(BuildContext context){
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
      primarySwatch: Colors.grey,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text("Negara " + itemArgs.nama),
          ),
          body: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(itemArgs.bendera),
                Text("Negara    : " + itemArgs.nama, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Ibu Kota  : " + itemArgs.ibuKota,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Mata Uang : " + itemArgs.mataUang,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            ),
      ),
     );
  }
}