import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Radio Buttons'),
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

  int val1 = 0;
  int val2 = 0;
  int val3 = 0;

  void change1(int s){
    setState(() {
      val1 = s;
    });
  }

  void change2(int t){
    setState(() {
      val2 = t;
    });
  }

  void change3(int u){
    setState(() {
      val3 = u;
    });
  }

  Widget radio(){
    List <Widget> _Button_radio = new List();

    for(int i = 0; i < 4 ; i++){
      _Button_radio.add(
        Radio(value: i, groupValue: val1, onChanged: change1)
      );
    }

    Column column = Column(children: _Button_radio,);

    return column;
  }

  Widget radioList1(){
    List <Widget> _Button_radio_list = new List();

    for(int i = 0; i < 4 ; i++){
      _Button_radio_list.add(
          RadioListTile(value: i, groupValue: val2,
              onChanged: change2,
              activeColor: Colors.red,
              controlAffinity: ListTileControlAffinity.platform,
              title: Text("Choix $i")
          )
      );
    }

    Column column = Column(children: _Button_radio_list,);

    return column;
  }

  Widget radioList2(){
    List <Widget> _Button_radio_list2 = new List();

    for(int i = 0; i < 4 ; i++){
      _Button_radio_list2.add(
          RadioListTile(value: i, groupValue: val3,
              onChanged: change3,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text("Choix $i")
          )
      );
    }

    Column column = Column(children: _Button_radio_list2,);

    return column;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget> [

            radio(),

            radioList1(),

            radioList2()
          ],
        ),
      ),
    );
  }
}
