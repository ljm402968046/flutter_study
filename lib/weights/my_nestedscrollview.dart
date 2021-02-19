import 'package:flutter/material.dart';

class MyNestedScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(headerSliverBuilder:( context,  innerBoxIsScrolled){
      return <Widget>[SliverAppBar(
        title: Text("自己内置的标题"),
        leading: BackButton(),
      )];
    }, body: ListView.builder(itemBuilder: (context,index){
      return Container(child:Text(index.toString()));
    },itemCount: 100,)
    );
  }
}
