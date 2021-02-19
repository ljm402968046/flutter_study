import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'my_navigator_b.dart';

class MyNavigatorA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Container(
          width: 350,
          height: 300,
          child: Container(
            alignment: Alignment.center,
            child: Card(
              child: Column(
                children: [
                  _buildItem(Icons.delete,"不感兴趣","减少这类信息"),
                  /**
                   * Divider是一个分割线控件
                   */
                  Divider(),
                  _buildItem(Icons.access_alarms_outlined,"举报","我要举报",showArrow:true,onPress: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return MyNavigatorB();
                    }));
                  }),
                  Divider(),
                  _buildItem(Icons.delete,"不知道说点什么",""),
                  Divider(),
                  _buildItem(Icons.delete,"不知道说点什么","hehehehehehheehehh"),
                  Divider(),
                ],
              ),
            ),
          ),
        )
    );
  }

  _buildItem(IconData icon,String titile ,String content,{bool showArrow = false,Function onPress}){
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          /**
           * Flexible组件可以控制Row、Column、Flex的子控件占满父控件,还能通过 flex 调整为占比 ，子控件占比 = 当前子控件flex/所有子控件flex之和。
              Flexible中fit参数表示填满剩余空间的方式，说明如下：
              tight：必须（强制）填满剩余空间。
              loose：尽可能大的填满剩余空间，但是可以不填满。
              Expanded继承字Flexible，fit参数固定为FlexFit.tight，也就是说Expanded必须（强制）填满剩余空间。
              Spacer的通过Expanded的实现的，和Expanded的区别是：Expanded可以设置子控件，而Spacer的子控件尺寸是0，因此Spacer适用于撑开Row、Column、Flex的子控件的空隙
           */
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titile,style: TextStyle(fontSize: 18),),
              content.length>0?Text(content,style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.4)),):Container(),
            ],
          )
          ),
          /**
           * 这里如果用TextButton 会导致上面 Divider 不显示，不知道为啥，待思考
           * TextButton(onPressed: onPress, child: Icon(Icons.arrow_forward_ios)
           */
          showArrow?IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: onPress):Container()
        ],
      )
    );

  }
}
