import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ljm_flutter/test/route_test.dart';
import 'package:ljm_flutter/utils/toast_utils.dart';

import 'weight_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  WeightData _weightData = WeightData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child:  ListView.builder(itemBuilder: (context,index){
            return GestureDetector(
                onTap: (){

                },
                child:Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(_weightData.listData[index].weightName,style: TextStyle(color: Colors.blue),),
                  ),
                ));
          },itemCount: _weightData.listData.length,
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          var test = await Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return RouteTest();
          }));
          ToastUtils.shotToast("test=${test}");
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
