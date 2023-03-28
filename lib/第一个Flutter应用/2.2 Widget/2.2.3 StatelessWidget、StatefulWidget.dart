
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

const double windowWidth = 480;
const double windowHeight = 854;
//StatelessWidget
// ignore: must_be_immutable
class Echo extends StatelessWidget  {
  Echo({
    Key? key,  
    required this.text,
    this.backgroundColor = Colors.grey, //默认为灰色
  }):super(key:key);
    
  final String text;
  final Color backgroundColor;
  int _counter = 1;
  void _add() {

    _counter++;
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Container(
  //       width: windowWidth,
  //       height: windowHeight,
  //       color: backgroundColor,
  //       child: Text(text),
  //     ),
  //   );
  // }

  

  @override
  StatelessElement createElement() => StatelessElement(this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(text),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        widthFactor: windowHeight,
        heightFactor: windowHeight,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("text1"),
            const Text("text2"),
            const Text("text3"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ); 
  }
  
}

class ContextRoute extends StatelessWidget  {
  const ContextRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Context测试"),
      ),
      body: Container(
        color:Colors.green,
        child: Builder(builder: (context) {
          // 在 widget 树中向上查找最近的父级`Scaffold`  widget 
          Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
          // 直接返回 AppBar的title， 此处实际上是Text("Context测试")
          return (scaffold?.appBar as AppBar).title ?? const Text("Contex测试");
        }),
      ),
    );
  }
}

//StatefulWidget
// ignore: camel_case_types
class nextApp extends StatelessWidget {
  const nextApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const statefulWidget(title: "hello"),
    );
  }
}
// ignore: camel_case_types
class statefulWidget extends StatefulWidget { 
  const statefulWidget({super.key, required this.title});
  final String title;

  @override
  State<statefulWidget> createState() => statefulWidgetState();
}

// ignore: camel_case_types
class statefulWidgetState extends State<statefulWidget> {

  int _counter1 = 0;

  void _add() {

    setState(() {
      _counter1++;
    });

  }
  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      _counter1++;
    });
  }
  @override
  Widget build(BuildContext context) { 

    return Scaffold(
      appBar: AppBar(
        title: const Text("nextFlutter"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 112, 4, 112),
        child: Text('$_counter1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
