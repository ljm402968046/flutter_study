import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyScrollPhysics extends StatelessWidget {
  var _list = [
    "AlwaysScrollableScrollPhysics"
    ,"总是可以滑动"
    ,"NeverScrollableScrollPhysics"
    ,"禁止滚动"
    ,"BouncingScrollPhysics"
    ,"内容超过一屏 上拉有回弹效果"
    ,"ClampingScrollPhysics"
    ,"包裹内容 不会有回弹"
    ,"FixedExtentScrollPhysics"
    ,"滚动条直接落在某一项上，而不是任何位置，类似于老虎机，只能在确定的内容上停止，而不能停在2个内容的中间"
    ,"PageScrollPhysics"
    ,"用于PageView的滚动特性，停留在页面的边界"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("MyScrollPhysics"),
      ),
      body: ListView.builder(itemBuilder: (countext,index){
        return
          Container(
            color: ThemeData.,
            margin: EdgeInsets.all(10),
            child: Card(child: ListTile(title: Text(_list[index])),),
          );
      },itemCount: _list.length,),
    );
  }
}
