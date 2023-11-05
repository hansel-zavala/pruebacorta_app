import 'package:flutter/material.dart';
import 'package:pruebacorta_app/widgets/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'ListView',
      debugShowCheckedModeBanner: false,
      home: Marketplace(),
    );
  }
}