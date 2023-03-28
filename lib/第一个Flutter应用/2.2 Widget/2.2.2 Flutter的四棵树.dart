// ignore_for_file: avoid_print

import 'package:flutter/material.dart';


// 既然 Widget 只是描述一个UI元素的配置信息，那么真正的布局、绘制是由谁来完成的呢？Flutter 框架的的处理流程是这样的：

// 根据 Widget 树生成一个 Element 树，Element 树中的节点都继承自 Element 类。
// 根据 Element 树生成 Render 树（渲染树），渲染树中的节点都继承自RenderObject 类。
// 根据渲染树生成 Layer 树，然后上屏显示，Layer 树中的节点都继承自 Layer 类。

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