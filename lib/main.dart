
import 'package:flutter/material.dart';

import 'login.dar.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const title = 'Native Splash Screen';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with signup',
      theme: ThemeData(



backgroundColor: Colors.black,

       // primarySwatch: Colors.purple,
      ),
      home:  LoginForm(),
    );
  }
}

