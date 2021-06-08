import 'package:dicoding_project/pages/about_asia_page.dart';
import 'package:dicoding_project/pages/asia_page.dart';
import 'package:dicoding_project/pages/galeri.dart';
import 'package:dicoding_project/pages/konversi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; 
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Text(
                    "Hello World! \nWelcome",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900)
                  ),
                  Align(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SeputarAsiaPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://www.pngkey.com/png/detail/367-3678643_asia-pacific-graphic-south-east-asia-map-icon.png", scale: 0.1),
                                    Spacer(),
                                    Text("Seputar Asia",textAlign: TextAlign.center),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://cdn0.iconfinder.com/data/iconsets/previews/medium-2x/asia-flag-icons-hexagon-flat-design.png", scale: 0.1),
                                    Spacer(),
                                    Text("Daftar Negara",textAlign: TextAlign.center),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => KonversiPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://cdn0.iconfinder.com/data/icons/finance-141/33/currency_converter-512.png", scale: 0.1),
                                    Spacer(),
                                    Text("Konversi Mata Uang",textAlign: TextAlign.center),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => GaleriPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://icons.iconarchive.com/icons/icondesigner.net/hyperion/256/Sidebar-Photos-icon.png", scale: 0.1),
                                    Spacer(),
                                    Text("Galery",textAlign: TextAlign.center),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}