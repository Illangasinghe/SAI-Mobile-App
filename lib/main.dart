import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAI Alpha',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.orange,
        accentColor: Colors.lightGreen,

        // Define the default font family.
        fontFamily: 'Georgia',

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SAI Home Page'),
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
  void _refresh() {
    setState(() {
      //call any variable changes here.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called

    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Summery"),
      ),

      //----------------------------------------------------------------------
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.chevron_left, size: 32.0)
                      ]),
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "2020-05-05",
                          style: new TextStyle(fontSize: 20.0),
                        )
                      ]),
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.chevron_right, size: 32.0)
                      ])
                ]),
            new Text(
              "Revenue",
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              "3,000,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            new Text(
              "Granted",
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              "2,000,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            new Text(
              "Parked",
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              "1,000,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            new Text(
              "Expected Income",
            ),
            new Text(
              "20,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            new Text(
              "Harvested Income",
            ),
            new Text(
              "10,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            new Text(
              "Remained Income",
            ),
            new Text(
              "10,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            new Text("Profit"),
            new Text(
              "5,000",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            )
          ]),

      //----------------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: _refresh,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
