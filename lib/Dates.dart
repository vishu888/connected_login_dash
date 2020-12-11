import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeArrivalDate(),
    );
  }
}

class ChangeArrivalDate extends StatefulWidget{
  @override
  _ChangeArrivalDate createState() => _ChangeArrivalDate();
}
class _ChangeArrivalDate extends State<ChangeArrivalDate> {
  DateTime dt,d;
  TimeOfDay tt,t;
  int flag=0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Change Arrival'),

          centerTitle: true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(dt==null ? DateFormat("dd-MM-yyyy").format(DateTime.parse(ModalRoute.of(context).settings.arguments))  : DateFormat("dd-MM-yyyy").format(dt)),

              RaisedButton(
                  color: Colors.amberAccent,
                  textColor: Colors.white,
                  child: Text('Pick a date'),
                  onPressed: () {
                    String ff=ModalRoute.of(context).settings.arguments;
                    var nn=ff.split(' ');
                    var arr=nn[0].split('-');
                    var pl=nn[1].split(':');
                    ff=arr[0]+"-"+arr[1]+"-"+arr[2]+" "+pl[0]+":"+pl[1]+":00";
                    d=DateTime.parse(ff);
                    showDatePicker(
                      context: context,
                      initialDate: (dt==null ? d : dt),
                      firstDate: (DateTime.now()),
                      lastDate: (DateTime.now().add(Duration(days:31))),
                    ).then((x) {
                      setState(() {
                        dt=x;
                      });
                    });
                  }
              ),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),
              Text(tt==null ? ((((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[0]).length<2 ? "0"+ (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[0]) : (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[0])  + ":" + ((((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[1]).length<2 ? "0"+ (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[1]) : (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[1]))  ) : (tt.hour.toString().length<2 ? "0"+tt.hour.toString() : tt.hour.toString())+":"+ (tt.minute.toString().length<2 ? "0"+tt.minute.toString() : tt.minute.toString())),

              RaisedButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text('Select time'),
                  onPressed: () {
                    flag=1;
                    String a=ModalRoute.of(context).settings.arguments;
                    var nn=a.split(' ');
                    var arr=nn[0].split('-');
                    var pl=nn[1].split(':');
                    a=arr[0]+"-"+arr[1]+"-"+arr[2]+" "+pl[0]+":"+pl[1]+":00";
                    d=DateTime.parse(a);
                    String da=DateFormat.m().format(d);
                    String h=DateFormat.H().format(d);
                    String m=(da.length<2 ? "0"+da : da);
                    t=TimeOfDay(hour: int.parse(h), minute: int.parse(m));

                    showTimePicker(
                      context: context,
                      initialTime: (tt==null ? t : tt),
                    ).then((x) {
                      setState(() {
                        if(x!=null)
                          tt=x;
                        else tt=tt;
                      });
                    });
                  }
              ),

              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),

              RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop(((dt==null ? (DateFormat("yyyy-MM-dd").format(DateTime.parse(ModalRoute.of(context).settings.arguments))) : DateFormat("yyyy-MM-dd").format(dt)) + " " +(tt==null ? ((((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[0]).length<2 ? "0"+ (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[0]) : (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[0])  + ":" + ((((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[1]).length<2 ? "0"+ (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[1]) : (((((ModalRoute.of(context).settings.arguments.toString()).split(' '))[1]).split(':'))[1]))  )  :  (tt.hour.toString().length < 2 ? "0"+tt.hour.toString() : tt.hour.toString())+":"+ (tt.minute.toString().length<2 ? "0"+tt.minute.toString() : tt.minute.toString()))));
                },
              ),

              Text(' '),
              Text(' '),
              Text(' '),
              Text(' '),

              RaisedButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Cancel',),
                  onPressed: () {
                    String a=ModalRoute.of(context).settings.arguments;
                    var nn=a.split(' ');
                    var arr=nn[0].split('-');
                    var pl=nn[1].split(':');
                    a=arr[0]+"-"+arr[1]+"-"+arr[2]+" "+pl[0]+":"+pl[1]+":00";
                    d=DateTime.parse(a);
                    String da=DateFormat.m().format(d);
                    Navigator.of(context).pop(DateFormat("yyyy-MM-dd").format(d)+" "+DateFormat.H().format(d)+":"+ (da.length <2 ? "0"+da : da));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
