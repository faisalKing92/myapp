import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Row(
            children: <Widget>[new Icon(Icons.home), new Text("  Faisal")],
          ),
          backgroundColor: Colors.blueAccent,
          textTheme: TextTheme(headline: TextStyle(fontSize: 30)),
        ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            myCustomCard("MY",Icons.home, color: Colors.blue),
            myCustomCard("NAME",Icons.account_circle, color: Colors.redAccent),
            myCustomCard("IS",Icons.cake),
            myCustomCard("FAISAL",Icons.person, color: Colors.yellow),
          ],
        ),
      ),
    );
  }

  Card myCustomCard(String title, IconData icon, {Color color: Colors.red}) {
    return new Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
                new Icon(icon, size: 40, color: color,),
                new Text(title,style: TextStyle(fontSize: 40),),
            ],
          ),
              ));
  }
}
