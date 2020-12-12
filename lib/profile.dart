import 'package:login_app/main_profile.dart';
import 'package:flutter/material.dart';
import 'personal.dart';
import 'car.dart';
void main() => runApp(MaterialApp(
    home:Homepage()
));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Edit User details'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder:(context)=> Edit()),
                );
              },
              child: Container(
                color: Colors.greenAccent,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text('Personal',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(width: 100),
                    Icon(
                      Icons.person,
                      color: Colors.purpleAccent,
                      size: 100,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 105),
            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder:(context)=> Car()),
                );
              },
              child: Container(
                color: Colors.greenAccent,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text('Car',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(width: 170),
                    Icon(
                      Icons.directions_car,
                      color: Colors.purpleAccent,
                      size: 100,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 105),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  ButtonTheme(
                    minWidth: 310.0,
                    height: 70.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context)=> Profile()),
                        );
                      },
                      child: Text("Cancel",
                        style: TextStyle(
                          fontSize: 30,
                        ),),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
