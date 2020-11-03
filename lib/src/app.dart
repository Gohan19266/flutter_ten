import 'package:flutter/material.dart';
import 'package:tenwidgets_dam/src/pages/contador_page.dart';
// import 'package:tenwidgets_dam/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

  @override
  build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Center(
        child : ContadorPage(),
      ),
    );
  }
}