// ignore_for_file: avoid_print

void main() { 
  yibuTest6();
}
// 1.Future.then
void yibuTest1() {
  Future.delayed(const Duration(seconds: 2),(){
    return "hi world!";
  }).then((data){
    print(data);
  });
}

// 2.Future.catchError
void yibuTest2() {
  Future.delayed(const Duration(seconds: 2),(){
   //return "hi world!";
    throw AssertionError("Error");  
  }).then((data){
    //执行成功会走到这里  
    print("success");
  }).catchError((e){
    //执行失败会走到这里  
    print(e);
  });
}

void yibuTest3() { 
  Future.delayed(Duration(seconds: 2), () {
	//return "hi world!";
    throw AssertionError("Error");
  }).then((data) {
    print("success");
  }, onError: (e) {
    print(e);
  });
}

// 3.Future.whenComplete
void yibuTest4() {  
  Future.delayed(const Duration(seconds: 2),(){
   //return "hi world!";
    throw AssertionError("Error");
  }).then((data){
    //执行成功会走到这里 
    print(data);
  }).catchError((e){
    //执行失败会走到这里   
    print(e);
  }).whenComplete((){
    //无论成功或失败都会走到这里
    print("完成");
  });
}

// 4.Future.wait
void yibuTest5() {  
  Future.wait([
    // 2秒后返回结果  
    Future.delayed(const Duration(seconds: 2), () {
      return "hello";
    }),
    // 4秒后返回结果  
    Future.delayed(const Duration(seconds: 4), () {
      return " world";
    })
  ]).then((results){
    print(results[0]+results[1]);
  }).catchError((e){
    print(e);
  });
}

//5.Stream
void yibuTest6() {

  Stream.fromFutures([
  // 1秒后返回结果
    Future.delayed(const Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(const Duration(seconds: 2),(){
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(const Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data){
    print(data);
  }, onError: (e){
    print(e.message);
  },onDone: (){

  });
}
