import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Register(),
));

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var current='Hyundai';
  var _brand= ['Maruti Suzuki', 'Hyundai', 'Honda', 'Datsun','Tata','Mahindra','Ford','Volkswagon','Renault','Others'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage('Assets/unnamed.png'),
              height: 90,
              width: 90,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Vehical Owner  Name',
                  icon: Icon(Icons.directions_car, color: Colors.brown,)
              ),
            ),
            SizedBox(height:10),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Vehical Number',
                  icon: Icon(Icons.confirmation_number, color: Colors.brown,)
              ),
            ),
            SizedBox(height: 10),
            new Expanded(
              child: new DropdownButton<String>(
                hint: Text('Brand of Your Vehical'),
                items: _brand.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  setState((){
                    this.current = newValueSelected;
                  });
                },
                value: current,
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top:15.0),
              width: 250.0,
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
                onPressed: () {},
                child: Text('Register'),
                color: Colors.deepOrange,
                elevation: 6.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}