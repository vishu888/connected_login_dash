import 'package:flutter/material.dart';
import'package:flutter/services.dart';
import 'dropdown.dart';
import 'parking_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parking App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  static const routeName = '/dash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Parking Management System'),
      ),
      body: Center(
        child : Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 70,left: 20),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () => {Navigator.push(context,MaterialPageRoute(builder: (context)=>Lists()))},
                            child : Column(
                              children: <Widget>[
                                Icon(Icons.airport_shuttle_outlined,size: 130,color: Colors.green,),
                                Text('Pre-Booking', style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                              ],
                            )
                        ),
                      ],
                    )
                ),
                Container(
                    padding: EdgeInsets.only(top: 70,left: 80),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () => {

                            },
                            child : Column(
                              children: <Widget>[
                                Icon(Icons.access_time_outlined,size: 130,color: Colors.indigoAccent,),
                                Text('Extend Parking Time', style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.indigoAccent)),
                              ],
                            )
                        ),
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 130,left: 20),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () => {

                            },
                            child : Column(
                              children: <Widget>[
                                Icon(Icons.business_center_outlined,size:145,color: Colors.deepOrange,),
                                Text('Buy Parking Package', style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange)),
                              ],
                            )
                        ),
                      ],
                    )
                ),
                Container(
                    padding: EdgeInsets.only(top: 130,left: 80),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () => {

                            },
                            child : Column(
                              children: <Widget>[
                                Icon( Icons.border_color,size: 125,color: Colors.amber,),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                Text('Rate Us', style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.amber)),
                              ],
                            )
                        ),
                      ],
                    )
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location_alt_outlined,),
        backgroundColor: Colors.purple,
        onPressed: () {

        },
      ),
    );
  }
}