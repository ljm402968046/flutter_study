import 'package:flutter/widgets.dart';

class PageData{
  String weightName;
  String content;
  bool isExpended ;
  WidgetBuilder weightBuilder;
  final Function f;
  PageData(this.weightName,this.content,this.isExpended, this.weightBuilder,this.f);
}