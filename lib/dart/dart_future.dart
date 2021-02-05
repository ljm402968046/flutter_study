import 'dart:io';

void main(){
  begin();
  //休息3秒再执行
  // contentSleep();
  //异步
  // var future = contentSleepFuture();
  // var s = future.then((value){
  //   print(value);
  // }).catchError((error) { // 捕获出现异常时的情况
  //   print(error);
  // });
  //异步，多值,只会返回第一个，返回第一个后就完成了，但是还是能继续链式反应，想真正的进行所有值都执行，得换别的方法
  // var future = contentSleepFutureD3();
  // var s = future.then((value){
  //   print(value);
  //   return value;
  // }).then((value){
  //   print(value);
  //   print("第二步");
  //   return value;
  // }).then((value){
  //   print(value);
  //   print("第三步");
  //   throw Exception("网络请求出现错误");
  // }).catchError((error) { // 捕获出现异常时的情况
  //   print(error);
  //   print("异常");
  // });

  var i = contentSleepFutureDeplay3();
  print(i);
  end();

}

void begin(){
  print("begin");
}
//中断主线程，过3秒再继续执行
void contentSleep(){
  sleep(Duration(seconds: 3));
  print("contentSleep3");
}

Future<String> contentSleepFuture(){
  return Future<String>((){
    sleep(Duration(seconds: 3));
    return "contentSleepFuture";
  });
}

Future<String> contentSleepFutureD3(){
  return Future<String>((){
    for(var i = 0;i<3;i++){
      sleep(Duration(seconds: 3));
      return "contentSleepFutureD3 i=${i}";
    }

  });
}

Future<String> contentSleepFutureDeplay3() async{
  var i = await Future.delayed(Duration(seconds: 3),() {

    print("iiii");
    return "iii";
  });
  print("end iii");//不加async await这里会在主线程提前执行，不会等3秒
  return "contentSleepFutureDeplay3:${i}";
}



Stream<String> contentSleepFutureD3Stream() async*{
    for(var i = 0;i<3;i++){
      sleep(Duration(seconds: 3));
      yield "contentSleepFutureD3Stream i=${i}";
    }
}


void end(){
  print("end");
}