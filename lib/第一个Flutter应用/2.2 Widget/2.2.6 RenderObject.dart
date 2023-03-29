// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

class CustomWidget extends LeafRenderObjectWidget{

  const CustomWidget({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    print("创建 RenderObject");
    // 创建 RenderObject
    return RenderCustomObject();
  }
  @override
  void updateRenderObject(BuildContext context, RenderCustomObject  renderObject) {
    // 更新 RenderObject
    print("更新 RenderObject");
    super.updateRenderObject(context, renderObject);
  }
}

class RenderCustomObject extends RenderBox{

  @override
  void performLayout() {
    // 实现布局逻辑
    print("实现布局逻辑");
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // 实现绘制
    print("实现绘制");
  }
}