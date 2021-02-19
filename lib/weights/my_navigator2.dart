import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'my_navigator_a.dart';

class MyNavigator2 extends StatefulWidget {
  @override
  _MyNavigator2State createState() => _MyNavigator2State();
}

class _MyNavigator2State extends State<MyNavigator2> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body:
      IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          MyBody(0),
          MyBody(1),
          MyBody(2),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.book),label: '菜单0'),
          BottomNavigationBarItem(icon:Icon(Icons.book),label: '菜单1'),
          BottomNavigationBarItem(icon:Icon(Icons.book),label: '菜单2'),
        ],
      ),
    );
  }
}
class MyBody extends StatelessWidget {
  final int index;

  MyBody(this.index);

  @override
  Widget build(BuildContext context) {
    return Navigator(
        initialRoute: '/',
        onGenerateRoute: (setting){
          WidgetBuilder widgetBuilder;
          widgetBuilder = (context)=>ListPage(index);
          return MaterialPageRoute(builder: widgetBuilder);
        }
    );
  }
}

class ListPage extends StatelessWidget {
  final int index;

  ListPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ElevatedButton(child: Text(index.toString()),
          onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));
          },),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text('detail'),
      ),
    );
  }
}


