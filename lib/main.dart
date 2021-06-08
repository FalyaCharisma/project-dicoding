import 'package:dicoding_project/pages/about_asia_page.dart';
import 'package:dicoding_project/pages/asia_page.dart';
import 'package:dicoding_project/pages/galeri.dart';
import 'package:dicoding_project/pages/home_page.dart';
import 'package:dicoding_project/pages/konversi_page.dart';
import 'package:flutter/material.dart';


void main() {
  //langkah 531
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',

    routes: {
      '/':(context)=> HomePage(),
      '/asia':(context)=> AsiaPage(),
      '/konversi':(context)=> KonversiPage(),
      '/about':(context)=> SeputarAsiaPage(),
      '/galeri':(context)=> GaleriPage(),
    },
  ));
}