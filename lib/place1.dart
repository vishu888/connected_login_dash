import 'package:flutter/material.dart';
import 'package:login_app/Dates.dart';
import 'package:login_app/Dates1.dart';
import 'package:login_app/payment.dart';
import 'package:intl/intl.dart';

class Place1 extends StatefulWidget{

  @override
  _Place1 createState() => _Place1();
}
class _Place1 extends State<Place1>{

  static int cnt=0;
  static int ncnt=0;
  static String test="";
  static String next="";
  static String add1,add2,add3,add4,add5,add6;
  String selecvehi,pays;
  void changedata(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context){
    DateTime now = DateTime.now();
    DateTime ndate,first,second;
    String date = DateFormat("yyyy-MM-dd").format(now);
    String nndate;
    String timeh = DateFormat("H").format(now), timem = DateFormat("mm").format(now);

    add1="NH 25, Blunt Square, Cash and Pay Colony, Charbagh";
    add2="National Highway 91, Hastings Ave, Nawabganj";
    add3="Opposite Head Post Office, Sadar Bazar - Jhansi Rd";
    add4="Sikar Rd, Badi Choupad, J.D.A. Market, Pink City";
    add5="Butler House, Shershah Rd, Delhi High Court, India Gate";
    add6="Mumbai - Agra National Hwy, Raghogarh - Vijaypur";

    const vehicles=["Two wheeler","Car","Bus","Truck"];

    const payments=["Google Pay","Paytm","Amazon Pay","PhonePe","Net Banking","Credit/Debit Card"];

    if (int.parse(timem) >= 30) {
      timem ="0";
      int x=int.parse(timeh)+1;
      timeh=x.toString();
    }
    else{
      timem="30";
    }
    if(timeh.length<2)
      timeh="0"+timeh;
    if(timem.length<2)
      timem="0"+timem;
    if(cnt==0) {
      test = date + " " + timeh + ":" + timem;
    }
    if(ncnt==0) {
      ndate=DateTime(now.year,now.month,now.day+1);
      nndate=DateFormat("yyyy-MM-dd").format(ndate);
      next = nndate+" "+ timeh+":"+timem;
    }
    first=DateFormat("yyyy-MM-dd HH:mm").parse(test);
    second=DateFormat("yyyy-MM-dd HH:mm").parse(next);
    var diff=second.difference(first);
    int diffhours=diff.inHours;
    int diffmins=diff.inMinutes;
    int diffdays=diff.inDays;
    String diffdur="";
    String payamt="";
    int topay=0;
    int type1,type2;
    if(selecvehi=="Two wheeler")
    {
      type1=10;
      type2=7;
    }
    else if(selecvehi=="Car")
    {
      type1=20;
      type2=10;
    }
    else if(selecvehi=="Bus")
    {
      type1=30;
      type2=20;
    }
    else
    {
      type1=50;
      type2=30;
    }
    if(diffdays<0 || diffhours<0 || diffmins<0 || first.isBefore(DateTime.now())) {
      diffdur = "Incorrect time selected";
      payamt="";
    }
    else
    {
      if(diffdays!=0 && diffdays!=1)
      {
        diffdur+=diffdays.toString()+" days ";
        topay+=2*type1+22*type2+(diffdays-1)*(24*type2);
        //print(1);
      }
      else if(diffdays==1)
      {
        //print(2);
        diffdur+=diffdays.toString()+" day ";
        topay+=diffdays*(2*type1+22*type2);
      }
      if((diffhours-diffdays*24)!=0 && (diffhours-diffdays*24)!=1)
      {
        diffdur+=(diffhours-diffdays*24).toString()+" hours ";
        if(diffdays==0) {
          topay += 2 * type1 + (diffhours - 2) * type2;
          //print(3);
        }
        else {
          topay += (diffhours-diffdays*24) * type2;
          //print(4);
        }
      }
      else if((diffhours-diffdays*24)==1)
      {
        diffdur+=(diffhours-diffdays*24).toString()+" hour ";
        if(diffdays==0) {
          topay += type1;
          //print(5);
        }
        else {
          topay += type2;
          //print(6);
        }
      }
      if((diffmins-diffhours*60)!=0)
      {
        diffdur+=(diffmins-diffhours*60).toString()+" minutes";
        if((diffdays==0 && diffhours==0) || (diffdays==0 && diffhours==1)) {
          topay += type1;
          //print(7);
        }
        else {
          topay += type2;
          //print(8);
        }
      }

      if(diffdur=="") {
        diffdur = "No interval selected";
        payamt="";
      }
      else
        payamt=topay.toString();
    }
    if((selecvehi=="Car" || selecvehi=="Two wheeler" || selecvehi=="Bus" || selecvehi=="Truck") &&
        (pays=="Google Pay" || pays=="Paytm" || pays=="Amazon Pay" ||
            pays=="PhonePe" || pays=="Net Banking" || pays=="Credit/Debit Card")){}
    else
      payamt="";

    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child :Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(ModalRoute.of(context).settings.arguments),
            centerTitle: true,
          ),
          body: Column(children: <Widget>[

            Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30,right: 30,bottom:20),
                    child: Column(

                        children: <Widget>[
                          Image.asset(
                            (
                                ModalRoute.of(context).settings.arguments=="Lucknow" ? 'assets/images/image01.jpg':
                                ModalRoute.of(context).settings.arguments=="Kanpur"  ? 'assets/images/image02.jpg':
                                ModalRoute.of(context).settings.arguments=="Jhansi"  ? 'assets/images/image03.jpg':
                                ModalRoute.of(context).settings.arguments=="Jaipur"  ? 'assets/images/image04.jpg':
                                ModalRoute.of(context).settings.arguments=="Delhi"   ? 'assets/images/image05.jpg':
                                'assets/images/image06.jpg'
                            ),
                            width: 130.0, height: 130.0,
                          ),
                        ]

                    ),
                  ),
                  Container(
                      width : 200.0,
                      height: 150.0,

                      padding: EdgeInsets.only(right:10, top: 45),
                      child: Column(
                          children: <Widget>[
                            Text(
                                (ModalRoute.of(context).settings.arguments=="Lucknow" ? add1 :
                                ModalRoute.of(context).settings.arguments=="Kanpur"  ? add2 :
                                ModalRoute.of(context).settings.arguments=="Jhansi"  ? add3 :
                                ModalRoute.of(context).settings.arguments=="Jaipur"  ? add4 :
                                ModalRoute.of(context).settings.arguments=="Delhi"   ? add5 :
                                add6
                                )
                                , style: TextStyle( fontSize: 15, color: Colors.grey)),
                            Row(
                              children: [
                                Icon(Icons.star,size: 20,color: Colors.amber,),
                                Icon(Icons.star,size: 20,color: Colors.amber,),
                                Icon(Icons.star,size: 20,color: Colors.amber,),
                                Icon(Icons.star,size: 20,color: Colors.amber,),
                                Icon(Icons.star,size: 20,color: Colors.amber,),
                              ],
                            ),

                          ]
                      )
                  ),
                ]
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                        children: <Widget>[
                          Text('Arriving', style: new TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold,decorationThickness: 5.0)),
                        ]
                    )
                ),
                Container(
                  width : 280.0,
                  padding: EdgeInsets.only(left:30,right:5,top:20),
                  child: Column(
                    children: <Widget>[

                      Text(DateFormat("dd-MM-yyyy HH:mm").format(DateTime.parse(test)),style: new TextStyle(color:Colors.grey,fontSize:17,),),

                      GestureDetector(
                        onTap: () async {
                          cnt++;
                          test=await Navigator.push(context,MaterialPageRoute(builder: (context)=> ChangeArrivalDate(),settings: RouteSettings(arguments: test)));
                          changedata();
                        },
                        child: Column(
                          children: [

                            Text('Change',style: new TextStyle(fontSize: 17,color: Colors.green)),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30,top: 25),
                      child: Column(
                          children: <Widget>[
                            Text('Leaving', style: new TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold,decorationThickness: 5.0)),
                          ]
                      )
                  ),
                  Container(
                      width : 280.0,
                      padding: EdgeInsets.only(left:30,right:5,top:50),
                      child: Column(
                          children: <Widget>[
                            Text(DateFormat("dd-MM-yyyy HH:mm").format(DateTime.parse(next)),style: new TextStyle(color:Colors.grey,fontSize:17,),),
                            GestureDetector(
                              onTap: () async {
                                ncnt++;
                                next=await Navigator.push(context,MaterialPageRoute(builder: (context)=> ChangeArrivalDate1(),settings: RouteSettings(arguments: next)));
                                changedata();
                              },
                              child: Column(
                                children: [

                                  Text('Change',style: new TextStyle(fontSize: 17,color: Colors.green)),
                                ],
                              ),
                            ),
                          ]
                      )
                  ),
                ]
            ),
            Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30,top: 35),
                      child: Column(
                          children: <Widget>[
                            Text('Duration', style: new TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold,decorationThickness: 2)),
                          ]
                      )
                  ),
                  Container(
                      width : 280.0,
                      padding: EdgeInsets.only(left:10,right:5,top:38),
                      child: Column(
                          children: <Widget>[
                            if(diffdur=="No interval selected" || diffdur=="Incorrect time selected")
                              Text('$diffdur',style: new TextStyle(color:Colors.red,fontSize:17)),
                            if(diffdur!="No interval selected" && diffdur!="Incorrect time selected")
                              Text('$diffdur',style: new TextStyle(color:Colors.blue,fontSize:17)),
                          ]
                      )
                  ),

                ]
            ),
            Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30,top: 40),
                      child: Column(
                          children: <Widget>[
                            Text('Vehicle', style: new TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold,decorationThickness: 5.0)),
                          ]
                      )
                  ),
                  Container(
                      width : 280.0,
                      padding: EdgeInsets.only(left:70,right:23,top:43),
                      child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                              alignedDropdown: false,
                              child: DropdownButton<String>(
                                hint: Text('Please select a vehicle',textAlign: TextAlign.center),
                                onChanged: (String e) {
                                  selecvehi=e;
                                  changedata();
                                },
                                isExpanded: false,
                                value: selecvehi,
                                items: vehicles.map((String val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: new Text('$val',textAlign: TextAlign.center,),
                                  );
                                }).toList(),
                              )
                          )
                      )
                  ),
                ]
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 30,top: 35),
                    child: Column(
                        children: <Widget>[
                          Text('Payment', style: new TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold,decorationThickness: 5.0)),
                        ]
                    )
                ),
                Container(
                    width : 267.0,
                    padding: EdgeInsets.only(left:48,right:23,top:35),
                    child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                            alignedDropdown: false,
                            child: DropdownButton<String>(
                              hint: Text('Select a payment option',textAlign: TextAlign.left),
                              onChanged: (String e) {
                                pays=e;
                                changedata();
                              },
                              isExpanded: false,
                              value: pays,
                              items: payments.map((String val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: new Text('$val',textAlign: TextAlign.center,),
                                );
                              }).toList(),
                            )
                        )
                    )
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 60,top: 35),
                    child: Column(
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            child: Text('Pay Rs $payamt'),
                            onPressed: () {
                              if(diffdur!="No interval selected" &&
                                  diffdur!="Incorrect time selected" &&
                                  (selecvehi=="Car" || selecvehi=="Two wheeler" || selecvehi=="Bus" || selecvehi=="Truck") &&
                                  (pays=="Google Pay" || pays=="Paytm" || pays=="Amazon Pay" ||
                                      pays=="PhonePe" || pays=="Net Banking" || pays=="Credit/Debit Card")
                              )
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Payments()));
                            },
                          )
                        ]
                    )
                ),
                Container(
                  padding: EdgeInsets.only(left: 65,top: 35),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text('Cancel'),
                        onPressed: () {
                          cnt=0;
                          ncnt=0;
                          changedata();
                          Navigator.of(context).pop(context);
                        },
                      )
                    ],
                  ),
                ),
              ],
            )
          ]
          )
      ),
    );
  }
}