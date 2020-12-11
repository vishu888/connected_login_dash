import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'place1.dart';
class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Area List'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Place1(),settings: RouteSettings(arguments: "Lucknow")));
                      },
                      child: Column(
                          children: <Widget>[
                            Icon(Icons.looks_one_outlined, size: 130,color: Colors.orangeAccent),
                            Text('Lucknow', style: new TextStyle(fontWeight: FontWeight.bold)),
                          ]
                      )
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Place1(),settings: RouteSettings(arguments: "Kanpur")));
                      },
                      child: Column(
                          children: <Widget>[
                            Icon(Icons.looks_two_outlined, size: 130,color: Colors.orangeAccent),
                            Text('Kanpur', style: new TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Place1(),settings: RouteSettings(arguments: "Jhansi")));
                      },
                      child: Column(
                          children: <Widget>[
                            Icon(Icons.looks_3_outlined, size: 130,color: Colors.orangeAccent,),
                            Text('Jhansi', style: new TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Place1(),settings: RouteSettings(arguments: "Jaipur")));
                      },
                      child: Column(
                          children: <Widget>[
                            Icon(Icons.looks_4_outlined, size: 130,color: Colors.orangeAccent),
                            Text('Jaipur', style: new TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Place1(),settings: RouteSettings(arguments: "Delhi")));
                        },
                        child: Column(
                            children: <Widget>[
                              Icon(Icons.looks_5_outlined, size: 130,color: Colors.orangeAccent),
                              Text('Delhi', style: new TextStyle(fontWeight: FontWeight.bold))
                            ]
                        )
                    ),
                  ]
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Place1(),settings: RouteSettings(arguments: "Guna")));
                      },
                      child: Column(
                          children: <Widget>[
                            Icon(Icons.looks_6_outlined, size: 130,color: Colors.orangeAccent),
                            Text('Guna', style: new TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}