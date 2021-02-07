import 'package:flutter/widgets.dart';

import 'page_data.dart';
import 'weights/my_navigator.dart';

class WeightData{

  static final  listData=[
    PageData("Navigator",(context)=>MyNavigator())
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