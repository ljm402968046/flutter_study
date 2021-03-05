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
      // debugShowMaterialGrid: true,
      // showPerformanceOverlay: true,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child:  /*ListView.builder(itemBuilder: (context,index){
            return GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: WeightData.listData[index].weightBuilder));
                },
                child:Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(WeightData.listData[index].weightName,style: TextStyle(color: Colors.blue),),
                  ),
                ));
          },itemCount: WeightData.listData.length,
          )*/
          Container(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: _buildList(),
            )
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
  _buildList(){
    return ExpansionPanelList(
      expansionCallback: (index,isExpended){
        setState(() {
          WeightData.listData[index].isExpended = !isExpended;
        });

      },
      children: WeightData.listData.map((e) =>
          ExpansionPanel(
              isExpanded: e.isExpended,
              headerBuilder:(context, isExpanded) {
                return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: e.weightBuilder));
                    },
                    child:ListTile(
                      title: Text(e.weightName,style: TextStyle(color: Colors.blue),),
                    ));

                /**/
              }, body: Container(height: 100,child: Text(e.content),)
          )
      ).toList(),
    );
  }
}
