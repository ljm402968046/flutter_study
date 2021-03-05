import 'package:flutter/widgets.dart';
import 'package:ljm_flutter/weights/my_navigator2.dart';

import 'page_data.dart';
import 'weights/my_navigator.dart';
import 'weights/my_nestedscrollview.dart';

class WeightData{

  static final  listData=[
    PageData("Navigator","路由",false,(context)=>MyNavigator()),
    PageData("Navigator2","页面内跳转",false,(context)=>MyNavigator2()),
    PageData("NestedScrollView","tabbar放和listview一起滚动",false,(context)=>MyNestedScrollView()),
    PageData("ScrollPhysics","ScrollPhysics并不是一个组件，它定义了可滚动组件的物理滚动特性。例如，当用户达到最大滚动范围时，是停止滚动，还是继续滚动。"
        "\n滚动组件（CustomScrollView、ScrollView、GridView、ListView等）的physics参数表示此属性",false,(context)=>MyNestedScrollView())

  ];

  static Map<String, WidgetBuilder> routers;

  Map<String, WidgetBuilder> createRouter(){
    routers = Map();
    listData.forEach((e) {
      routers[e.weightName]=e.weightBuilder;
    });
    return  routers;
  }


}