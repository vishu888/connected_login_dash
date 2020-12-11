import 'package:flutter/material.dart';
import 'parking_list.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Parking Management System',
              style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input_outlined,color: Colors.green,),
            title: Text('Welcome', style: new TextStyle(color: Colors.green)),
            onTap: () => {

            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined,color: Colors.orange,),
            title: Text('Profile', style: new TextStyle(color: Colors.orange)),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.add_business_outlined,color: Colors.purple,),
            title: Text('Register Vehicle', style: new TextStyle(color: Colors.purple)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.account_tree_outlined,color: Colors.lightBlue,),
            title: Text('Parking History', style: new TextStyle(color: Colors.lightBlue)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined,color: Colors.red,),
            title: Text('Logout', style: new TextStyle(color: Colors.red)),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
