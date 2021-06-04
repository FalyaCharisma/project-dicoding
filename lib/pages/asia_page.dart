import 'package:dicoding_project/models/asia.dart';
import 'package:dicoding_project/pages/negara_page.dart';
import 'package:flutter/material.dart';

class AsiaPage extends StatelessWidget{
  final List<Asia> items = [
    Asia(nama: 'Indonesia', bendera: 'https://image.flaticon.com/icons/png/512/2151/2151329.png', ibuKota: 'Jakarta', mataUang: 'Rupiah')
  ];

  @override 
  Widget build(BuildContext context){
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
      primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Negara"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                height: 30,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Negara"),
                    Text("Bendera"),
                    Text("Ibu kota"),
                    Text("Mata Uang")
                  ],
                ),
              ),
              Expanded(
                child: 
                ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final asia = items[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                        return NegaraPage(itemArgs: asia);
                        // settings: RouteSettings(
                        //   arguments: asia),
                        }));
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(child: Text(asia.nama, textAlign: TextAlign.center)),
                              Expanded(child: Image.network(asia.bendera, width: 50, height: 30,)),
                              Expanded(child: Text(asia.ibuKota, textAlign: TextAlign.center,)),
                              Expanded(child: Text(asia.mataUang, textAlign: TextAlign.center,)),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                )
              ),
           ],
          ),
        ),     
    );
  }
}
