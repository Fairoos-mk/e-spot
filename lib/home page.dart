import 'package:e_spot/e_spot.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'data.dart';

class homepage extends StatefulWidget {
  String Username;
  String Password;

  homepage({Key? key, required String this.Username, required String this.Password}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(30.0),
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              print('Login');
              Navigator.push(context, MaterialPageRoute(builder: (_)=> e_spot()));
            },
            child: Text(
              'E-Spot',
              style:
              TextStyle(color: Colors.black),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.green[900],
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),

      ), drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(widget.Username),
            accountEmail: Text("fairoos@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Text(
                widget.Username[0],
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home), title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.import_contacts), title: Text("Import contact"),
            onTap: () {
              Navigator.pop(context);
            },
          ),ListTile(
            leading: Icon(Icons.security), title: Text("Security"),
            onTap: () {
              Navigator.pop(context);
            },
          ),ListTile(
            leading: Icon(Icons.home), title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),ListTile(
            leading: Icon(Icons.share), title: Text("Share"),
            onTap: () {
              Navigator.pop(context);
            },
          ),ListTile(
            leading: Icon(Icons.save_alt), title: Text("Save"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts), title: Text("Contact Us"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    );
  }}






