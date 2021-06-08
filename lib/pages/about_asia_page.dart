import 'package:flutter/material.dart';

class SeputarAsiaPage extends StatelessWidget{

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
          title: Text("Seputar Asia"),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network("https://www.orslabs.com/wp-content/uploads/2016/02/Geo-Map-of-Asia.png"),
                  Container(
                    color: Colors.grey,
                    child: Row(children: [
                      Text("Benua ASIA", style: TextStyle(fontSize: 20))
                    ]),
                  ),
                  Text("Asia adalah benua terbesar di bumi yang berbatasan dengan Pegunungan Ural dan Kaukasus serta Samudra Arktika, Pasifik, dan Hindia. Benua ini mencakup 8,7% dari total luas permukaan bumi dan terdiri dari 30% dari luas daratannya. " +
                  "Dengan sekitar 4,3 miliar orang, terdapat 60% dari populasi manusia dunia saat ini. Asia memiliki tingkat pertumbuhan yang tinggi di era modern. Misalnya, selama abad ke-20, Populasi Asia hampir empat kali lipat."
                  + "Benua Asia dan Eropa merupakan benua yang terhubung lewat darat dan keduanya membentuk suatu benua raksasa yang disebut sebagai Eurasia. Batas antara Asia dan Eropa sangat kabur sehingga beberapa negara seperti Turki terkadang dapat dimasukkan ke Asia maupun Eropa. "
                  +"Beberapa bentang alam yang sering dipakai untuk memisahkan kedua benua tersebut adalah Selat Dardanella, Laut Marmara, Selat Bosporus, Laut Hitam, Pegunungan Kaukasus, Laut Kaspia, Sungai Ural (atau Sungai Emba), dan Pegunungan Ural hingga Novaya Zemlya. "
                  +"Selain berbatasan langsung dengan Benua Eropa, Benua Asia juga memiliki batas langsung dengan Benua Afrika yang memiliki perbatasan darat dan bertemu di sekitar Terusan Suez. Mengingat ukuran dan keragamannya, konsep Asia – nama tersebut kembali ke zaman klasik – yang sebenarnya mungkin lebih berkaitan dengan geografi manusia daripada geografi fisik. "
                  +"Asia sangat beragam dan di dalam masing-masing wilayahnya terdapat kelompok-kelompok etnis, budaya, lingkungan, ekonomi, hubungan sejarah dan sistem pemerintahan.",
                  style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
        ),
      ),   
    );
  }
}
