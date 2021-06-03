import 'package:dicoding_project/pages/asia_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
 
  @override 
  Widget build(BuildContext context){
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
      primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman Utama"), 
        ),
    
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(8), 
            child: Column(
              children: [
                Column(children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(children: [
                     Image.network("https://image.flaticon.com/icons/png/512/4746/4746422.png",  height: 150, width: 150,),
                      Container(
                        width: 170,
                        child: RaisedButton(onPressed: (){
                           Navigator.push(context, new MaterialPageRoute(builder: (context)=> new AsiaPage()));
                        },
                          child: Text("Asia"),
                        ),
                      )
                    ],
                    ),
                    Column(children: [
                     Image.network("https://image.flaticon.com/icons/png/512/520/520031.png", height: 150, width: 150,),
                      Container(
                        width: 170, 
                        child: RaisedButton(onPressed: (){
                        },
                          child: Text("Africa"),
                        ),
                      )
                    ],
                    ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(children: [
                     Image.network("https://image.flaticon.com/icons/png/512/4746/4746422.png",  height: 150, width: 150,),
                      Container(
                        width: 170,
                        child: RaisedButton(onPressed: (){
                        },
                          child: Text("Asia"),
                        ),
                      )
                    ],
                    ),
                    Column(children: [
                     Image.network("https://image.flaticon.com/icons/png/512/520/520031.png", height: 150, width: 150,),
                      Container(
                        width: 170, 
                        child: RaisedButton(onPressed: (){
                        },
                          child: Text("Africa"),
                        ),
                      )
                    ],
                    ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(children: [
                     Image.network("https://image.flaticon.com/icons/png/512/4746/4746422.png",  height: 150, width: 150,),
                      Container(
                        width: 170,
                        child: RaisedButton(onPressed: (){
                        },
                          child: Text("Asia"),
                        ),
                      )
                    ],
                    ),
                    Column(children: [
                     Image.network("https://image.flaticon.com/icons/png/512/520/520031.png", height: 150, width: 150,),
                      Container(
                        width: 170, 
                        child: RaisedButton(onPressed: (){
                        },
                          child: Text("Africa"),
                        ),
                      )
                    ],
                    ),
                  ],
                  ),
                ],
                ),
              ],
            ),
          ),
        ),
      ),     
    );
  }
}