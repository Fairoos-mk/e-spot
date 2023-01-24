import 'package:flutter/material.dart';

import '../main.dart';

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
      appBar: AppBar(
        title: Text('home screen'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(widget.Username),
            Text(widget.Password),

          ],
        ),
      ), drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
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






