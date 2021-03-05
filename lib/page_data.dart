import 'package:flutter/widgets.dart';

class PageData{
  String weightName;
  String content;
  bool isExpended ;
  WidgetBuilder weightBuilder;
  PageData(this.weightName,this.content,this.isExpended, this.weightBuilder);
}