
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ljm_flutter/utils/toast_utils.dart';
class MyScrollPhysics extends StatefulWidget {
  @override
  _MyScrollPhysicsState createState() => _MyScrollPhysicsState();
}

class _MyScrollPhysicsState extends State<MyScrollPhysics> {
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
    ,"用于PageView的滚动特性，停留在页面的边界"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"
    ,"1"];

  ScrollPhysics _scrollPhysics;
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
            margin: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){

                ToastUtils.shotToast(_list[index]);
                switch(_list[index]){
                  case "AlwaysScrollableScrollPhysics":
                    setState(() {
                      _scrollPhysics=AlwaysScrollableScrollPhysics();
                    });
                    break;
                  case "NeverScrollableScrollPhysics":
                    setState(() {
                      _scrollPhysics=NeverScrollableScrollPhysics();
                    });
                    break;
                  case "BouncingScrollPhysics":
                    setState(() {
                      _scrollPhysics=BouncingScrollPhysics();
                    });
                    break;
                  case "ClampingScrollPhysics":
                    setState(() {
                      _scrollPhysics=ClampingScrollPhysics();
                    });
                    break;
                  case "FixedExtentScrollPhysics":
                    setState(() {
                      _scrollPhysics=FixedExtentScrollPhysics();
                    });
                    break;
                  case "PageScrollPhysics":
                    setState(() {
                      _scrollPhysics=PageScrollPhysics();
                    });
                    break;
                }
              },
              child: Card(child: ListTile(title: Text(_list[index])),),
            ),
          );
      },itemCount: _list.length,physics: _scrollPhysics,),
    );
  }
}



