
// ignore_for_file: avoid_print

void main() {
  
  // changeType();
  // allType();
  // printLengths();
  // finalconst();
  // test2();
  Test3().say();
}

//1. var 关键字
//类似于 JavaScript 中的var，它可以接收任何类型的变量，但最大的不同是 Dart 中 var 变量一旦赋值，类型便会确定，则不能再改变其类型，如：
void changeType() {
  var t = "hi world";
  print(t);
}

//2. dynamic 和 Object
void allType() {
  dynamic y;
  Object x;
  y = "hi world";
  x = 'Hello Object';
  //下面代码没有问题
  y = 1000;
  x = 1001;
  print(x);
  print(y);
}

dynamic a;
Object b = "";
printLengths() {
  // 正常
  // print(a.length);
  // 报错 The getter 'length' is not defined for the class 'Object'
  // print(b.length);
}

//3. final和const
finalconst() {

  //可以省略String这个类型声明
  // ignore: prefer_const_declarations
  final str = "hi world!";
  //final String str = "hi world"; 
  const str1 = "hi world";
  //const String str1 = "hi world";
  print(str);
  print(str1);

}

//4. 空安全（null-safety）
test() {
  int i = 2; 
  print(i*8);
}
test2() {
  int i = 8; //默认为不可空，必须在定义时初始化。
  // ignore: unused_local_variable
  int? j; // 定义为可空类型，对于可空变量，我们在使用前必须判空。
  // 如果我们预期变量不能为空，但在定义时不能确定其初始值，则可以加上late关键字，
  // 表示会稍后初始化，但是在正式使用它之前必须得保证初始化过了，否则会报错
  late int k;
  k=9;
  print(k);
  print(j);
}

class Test3 {
  int? i = 0;
  Function? fun;
  say(){
    if(i!=null) {
      print(i! * 8); //因为已经判过空，所以能走到这 i 必不为null，如果没有显式申明，则 IDE 会报错
    }
    if(fun!=null){
      fun!(); // 同上
    }
  }
}
