import 'dart:io';

import 'package:flutter/material.dart';

void main() {
   // asyncTest();
   var future = asyncTest2();
   future.then((value){
     print(value);
   });
   // var stream = asyncStarTest();
   // print(stream);
    foo();
    var b = fooSyncStar().iterator;
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    b.moveNext();
    //当没有下一个值得时候，函数会隐式的调用 return方法来终止函数。

    Me me = Me();
    me.speak();
}

class Speak{
    void speak(){
      print("Speak");
  }
}

class SleepSpeak{
  void speak(){
    print("SleepSpeak");
  }
}



abstract class Animal {
  //未实现的方法 子类必须继承
  void abc();
  //已经实现的方法，子类可选择继承
  void bcd() {
    print("bcd");
  }
}

class Me with Speak,SleepSpeak,Animal{
  @override
  void speak() {
    super.speak();
    print("me speak");
  }

  @override
  void abc() {
    // TODO: implement abc
  }
}
/**
    sync/sync*
 */
void foo(){
  print("foo start");
  for(var i=0;i<3;i++){
    print("i=${i}");
  }
  print("foo end");
}

Iterable fooSyncStar() sync*{
  print("fooSyncStar start");
  for(var i=0;i<3;i++){
    print("fooSyncStar i=${i}");
  }
  print("fooSyncStar end");
}

void asyncTest() async{
  print("123");
  sleep(Duration(seconds: 3));
  for(var i = 0;i<3;i++){
    print("asyncTest i=${i}");
  }
}

Future<int> asyncTest2() {
  print("123");
  return Future<int>((){
    sleep(Duration(seconds: 3));
    for(var i = 0;i<3;i++){
      return i;
    }
  });
}

Stream asyncStarTest() async*{
  for(var i = 0;i<3;i++){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}