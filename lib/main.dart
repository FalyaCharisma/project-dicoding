import 'package:dicoding_project/pages/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  //langkah 531
  runApp(MaterialApp(
    initialRoute: '/',

    routes: {
      '/':(context)=> HomePage(),
    },
  ));
}