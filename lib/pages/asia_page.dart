import 'package:dicoding_project/models/asia.dart';
import 'package:dicoding_project/pages/negara_page.dart';
import 'package:flutter/material.dart';

class AsiaPage extends StatelessWidget{
  final List<Asia> items = [
    Asia(nama: 'Indonesia', bendera: 'https://image.flaticon.com/icons/png/512/2151/2151329.png', ibuKota: 'Jakarta', mataUang: 'Rupiah'),
    Asia(nama: 'Malaysia', bendera: 'https://image.flaticon.com/icons/png/512/555/555623.png', ibuKota: 'Kuala Lumpur', mataUang: 'Ringgit'),
    Asia(nama: 'Singapura', bendera: 'https://image.flaticon.com/icons/png/512/555/555538.png', ibuKota: 'Singapura', mataUang: 'Dollar Singapura'),
    Asia(nama: 'Thailand', bendera: 'https://image.flaticon.com/icons/png/512/555/555495.png', ibuKota: 'Bangkok', mataUang: 'Bath'),
    Asia(nama: 'Korea Selatan', bendera: 'https://image.flaticon.com/icons/png/512/330/330591.png', ibuKota: 'Seoul', mataUang: 'Won'),
    Asia(nama: 'Jepang', bendera: 'https://image.flaticon.com/icons/png/512/555/555646.png', ibuKota: 'Tokyo', mataUang: 'Yen'),
    Asia(nama: 'China', bendera: 'https://image.flaticon.com/icons/png/512/2151/2151303.png', ibuKota: 'Tiongkok', mataUang: 'Yuan'),
    Asia(nama: 'Filipina', bendera: 'https://image.flaticon.com/icons/png/512/555/555603.png', ibuKota: 'Manila', mataUang: 'Peso'),
    Asia(nama: 'Myanmar', bendera: 'https://image.flaticon.com/icons/png/512/555/555651.png', ibuKota: 'Burma', mataUang: 'Kyat'),

  ];

  @override 
  Widget build(BuildContext context){
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
      primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text("List Negara"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                height: 30,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("  Negara", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                    Text("  Bendera", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                    Text("  Ibu kota", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                    Text("  Mata Uang", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15))
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
   //   ),     
    );
  }
}
