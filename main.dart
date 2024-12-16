import 'package:flutter/material.dart';
import '/model/post.dart';
import 'baitap1.dart';
import '/port_sceen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examples',
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      home: const PostScreen(),
    );
  }
}
