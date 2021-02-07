import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class  RouteTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: Text("RouteTest"),
        actions: [
          ElevatedButton(onPressed: (){}, child: Text("e1")),
          ElevatedButton(onPressed: (){}, child: Text("e2")),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: ElevatedButton(child: Text("退回"),onPressed: (){
          Navigator.of(context).pop("这是返回的值");
        },),
      ),
    );
  }
}
