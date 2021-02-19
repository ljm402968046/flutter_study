import 'package:flutter/widgets.dart';
import 'package:ljm_flutter/weights/my_navigator2.dart';

import 'page_data.dart';
import 'weights/my_navigator.dart';
import 'weights/my_nestedscrollview.dart';

class WeightData{

  static final  listData=[
    PageData("Navigator",(context)=>MyNavigator()),
    PageData("Navigator2",(context)=>MyNavigator2()),
    PageData("NestedScrollView",(context)=>MyNestedScrollView())

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