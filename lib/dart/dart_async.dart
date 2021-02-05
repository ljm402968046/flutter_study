import 'dart:io';

void main()async{
  begin();
  var i = await asynvTest();
  print("i=${i}");
  end();
}

void begin(){
  print("begin");
}

Future<String> asynvTest() {
  return Future<String>((){
    sleep(Duration(seconds: 3));
    return "等待后的结果";
  });
}


void end(){
  print("end");
}