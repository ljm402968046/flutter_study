import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {

  //注意这个不是web的，web的颜色和位置写死了，要写就要变更
  static void shotToast(
      String message, [//方括号里是可选参数，可以不填，等号右边是默认值
        Toast time = Toast.LENGTH_SHORT,
        ToastGravity gravity = ToastGravity.BOTTOM,
        Color backColor = Colors.black45,
        Color textColor = Colors.white,
      ]) {
    Fluttertoast.showToast(
        msg: message,//消息内容
        toastLength: time,//停留时间
        gravity: gravity,//出现的位置
        timeInSecForIosWeb: 1,
        backgroundColor: backColor,//背景色
        textColor: textColor,//前景色
        fontSize: 16.0,
        webPosition: "center");//文本字号
  }

}