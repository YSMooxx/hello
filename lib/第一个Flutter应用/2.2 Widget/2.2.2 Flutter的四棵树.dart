// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  
  print("object");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const View(title: 'Hello Flutter'),
      color: Colors.blue,
    );
  }
}

class View extends StatefulWidget {

  const View({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  test createState() => test();

}

// ignore: camel_case_types
class test extends State<View> { 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(),backgroundColor: Colors.black);
  }

}