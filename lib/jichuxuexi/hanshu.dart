
// ignore_for_file: avoid_print

//  import 'package:flutter/material.dart';

void main() {
  //test(() => isNoble(10));
  hanshusay('hello');
  //调用execute，将箭头函数作为参数传递
  execute(() => print("xxx"));
  keXuanSay('Bob', 'Howdy');
  keXuanSay('Bob', 'Howdy', 'smoke signal');
  enableFlags(bold: true, hidden: null);
}

//1. 函数声明
typedef CALLBACK = bool Function();

bool isNoble (int atomicNumber) {
  if (atomicNumber > 1) {
    return true;
  }else {
    return false;
  }
} 

void test(CALLBACK cb){
   print(cb()); 
}

//2. 函数作为变量
var hanshusay = (str) {
  print(str);
};

//3. 函数作为参数传递
//定义函数execute，它的参数类型为函数
void execute(var callback) {
    callback(); //执行传入的函数
}
//3.1可选的位置参数
String keXuanSay(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  print(result);
  return result;
}
//3.2可选的命名参数
//设置[bold]和[hidden]标志
void enableFlags({bool? bold, bool? hidden}) {
  print(bold);
  print(hidden);
}
