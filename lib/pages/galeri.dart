import 'package:flutter/material.dart';

class GaleriPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

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
          title: Text('Galeri Foto'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network("https://d99i6ad9lbm5v.cloudfront.net/uploads/image/file/5170/pantai-terindah-di-asia-tenggara-9.jpg"),
                Image.network("https://www.indus.travel/upload_data/tour/bannerimage/banner_5c1bf0c11e162_bangkok-and-island-of-thailand.jpg"),
                Image.network("https://cdn.tourradar.com/s3/tour/original/153002_538e95d7.jpg"),
                Image.network("https://www.globetrotters.be/Main%20Globetrotters/Indonesia/slides/Bali-6.jpg")

            ],),
          ),
          // height: 300,
          // child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: <Widget>[
          //     Container(
          //      width: 300,
          //       child: Image.network("https://d99i6ad9lbm5v.cloudfront.net/uploads/image/file/5170/pantai-terindah-di-asia-tenggara-9.jpg", height: 300, width: 500,),
          //     ),
          //     Container(
          //     width: 300,
          //       child: Image.network("https://www.indus.travel/upload_data/tour/bannerimage/banner_5c1bf0c11e162_bangkok-and-island-of-thailand.jpg", height: 300, width: 500)
          //     ),
          //     Container(
          //     width: 300,
          //       child: Image.network("https://cdn.tourradar.com/s3/tour/original/153002_538e95d7.jpg",  height: 300, width: 500)
          //     ),
          //     Container(
          //     width: 300,
          //       child: Image.network("https://www.globetrotters.be/Main%20Globetrotters/Indonesia/slides/Bali-6.jpg",  height: 300, width: 500)
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}