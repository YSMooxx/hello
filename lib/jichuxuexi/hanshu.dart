
 import 'package:flutter/material.dart';

void main() {
  say("hi world");
  debugPrint(sayy("Bob", "Howdy", "smoke signal"));
  Future.delayed(const Duration(seconds: 2),(){
   return "hi world!";
  }).then((data){
    debugPrint(data);
  });
}

var say = (str){
    debugPrint(str);
    // ignore: avoid_print
};

bool isNoble(int atomicNumber) {
  return true;
}

String sayy(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}