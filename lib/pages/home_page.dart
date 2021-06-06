import 'package:dicoding_project/pages/asia_page.dart';
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
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://cdn3.vectorstock.com/i/1000x1000/65/47/colorful-map-asia-continent-vector-33236547.jpg"),
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
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://cdn3.vectorstock.com/i/1000x1000/65/47/colorful-map-asia-continent-vector-33236547.jpg"),
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
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://cdn3.vectorstock.com/i/1000x1000/65/47/colorful-map-asia-continent-vector-33236547.jpg"),
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
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AsiaPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Spacer(),
                                    Image.network("https://cdn3.vectorstock.com/i/1000x1000/65/47/colorful-map-asia-continent-vector-33236547.jpg"),
                                    Spacer(),
                                    Text("Daftar Negara",textAlign: TextAlign.center),
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