import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyNavigatorB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Container(
        width: 350,
        height: 300,
        child: Center(
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    BackButton(),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("举报"))
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }


}
