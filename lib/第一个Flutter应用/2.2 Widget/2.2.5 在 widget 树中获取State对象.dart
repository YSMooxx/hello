// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class GetStateObjectRoute extends StatefulWidget {
  const GetStateObjectRoute({Key? key}) : super(key: key);

  @override
  State<GetStateObjectRoute> createState() => _GetStateObjectRouteState();
}

class _GetStateObjectRouteState extends State<GetStateObjectRoute> {

  // ignore: prefer_final_fields
  static GlobalKey<ScaffoldState> _globalKey= GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Column(
          children: [
            Builder(builder: (context) {
              /*打开抽屉菜单1
              return ElevatedButton(
                onPressed: () {
                  // 查找父级最近的Scaffold对应的ScaffoldState对象
                  ScaffoldState state = context.findAncestorStateOfType<ScaffoldState>()!;
                  // 打开抽屉菜单
                  state.openDrawer();
                },
                // ignore: prefer_const_constructors
                child: Text('打开抽屉菜单1'),
              )
              */
              /*打开抽屉菜单2
              return ElevatedButton(
                onPressed: () {
                  // 直接通过of静态方法来获取ScaffoldState
                  ScaffoldState state=Scaffold.of(context);
                  // 打开抽屉菜单
                  state.openDrawer();
                },
                // ignore: prefer_const_constructors
                child: Text('打开抽屉菜单2'),
              );
              */
              /*显示SnackBar
              return ElevatedButton(
                onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                    // ignore: prefer_const_constructors
                    SnackBar(content: Text("我是SnackBar")),
                  );
                },
                // ignore: prefer_const_constructors
                child: Text('显示SnackBar'),
              );
              */
              //GlobalKey 
              //注意：使用 GlobalKey 开销较大，如果有其他可选方案，应尽量避免使用它。另外，同一个 GlobalKey 在整个 widget 树中必须是唯一的，不能重复。
              return ElevatedButton (
                onPressed: (){
                  _globalKey.currentState!.openDrawer();
                }, 
                // ignore: prefer_const_constructors
                child: Text('打开抽屉菜单3'),

              );
            }),
          ],
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}