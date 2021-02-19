import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'my_navigator_a.dart';

class MyNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body:Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          child: Navigator(
            initialRoute: "/",
            onGenerateRoute: (settings){
              WidgetBuilder weightBuilder;
              switch(settings.name){
                case "/":
                  weightBuilder = (context)=>MyNavigatorA();
                  break;
              }
              return MaterialPageRoute(builder: weightBuilder);
            },
          ),
        )
    );
  }
}
