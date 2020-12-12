import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {

              },
            ),
            title: Text('Select Package'),
            backgroundColor: Colors.purple,
            centerTitle: true,
            elevation: 1.0,
          ),
          body:
          SafeArea(
              child: Center(
                  child: GridWidget()
              )
          ),
        )
    );
  }
}
class GridWidget extends StatefulWidget {

  GridViewState createState() => GridViewState();

}

class GridViewState extends State {
  num countValue = 2 ;
  num aspectWidth = 2 ;
  num aspectHeight = 1 ;
  List<String> gridItems = [
    'Monthly(400/Month)',
    'Quaterly(300/Month)',
    'Half Yearly(200/Month)',
    'Yearly(100/Month)',
    'Lifetime(INR 4000)',
  ];
  getGridViewSelectedItem(BuildContext context, String gridItem){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(gridItem),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [ Expanded(
              child: GridView.count(
                crossAxisCount: countValue,
                childAspectRatio: (aspectWidth / aspectHeight),
                children: gridItems.map((data) =>

                    GestureDetector(
                        onTap: (){getGridViewSelectedItem(context, data);
                        },
                        child: Container(
                            margin:EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                            color: Colors.lightBlueAccent,
                            child: Center(
                                child: Text(data,
                                    style: TextStyle(fontSize: 22, color: Colors.white),
                                    textAlign: TextAlign.center)
                            )))

                ).toList(),
              ),),

              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:
                ButtonTheme(
                  minWidth: 400,
                  height: 46,
                  child: RaisedButton(
                    onPressed: () {

                    },
                    child: Text("Cancel",
                      style: TextStyle(
                        fontSize: 30,
                      ),),
                    color: Colors.red,
                  ),
                ),
              )

            ]));
  }
}