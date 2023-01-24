import 'package:flutter/material.dart';

import 'data.dart';
import 'gentextformfield.dart';
class SignupFom extends StatefulWidget {
  SignupFom({Key? key}) : super(key: key);

  @override
  State<SignupFom> createState() => _SignupFomState();

}

class _SignupFomState extends State<SignupFom> {
  var Id="",pswd="",cpd="",Email="",phNo="";
  final _conUserId = TextEditingController();
  final _conpassword= TextEditingController();
  final _conconfirmpassword = TextEditingController();
  final _conEmail= TextEditingController();
  final _conphoneNo= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
         child: Stack(
           children: [
          Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
        image:DecorationImage(
                 colorFilter:
        ColorFilter.mode(Colors.black.withOpacity(1),
    BlendMode.dstATop),
    image: NetworkImage("https://wallpaper.dog/large/20513136.jpg"),
    fit: BoxFit.cover),
    )),
       SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 100.0,),
                Text(
                  'E-Spot',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20.0),
                ),
                SizedBox(height: 100.0,),
                getTextFormField(icon: Icons.person,
                  hindName: 'User ID', controller: _conUserId),
                SizedBox(height: 10.0,),
                getTextFormField(icon: Icons.person,
                    hindName: 'User ID', controller: _conpassword),
                SizedBox(height: 10.0,),
                getTextFormField(icon: Icons.person,
                    hindName: 'User ID', controller: _conconfirmpassword),
                SizedBox(height: 10.0,),
                getTextFormField(icon: Icons.person,
                    hindName: 'User ID', controller: _conEmail),
                SizedBox(height: 10.0,),
                getTextFormField(icon: Icons.person,
                    hindName: 'User ID', controller: _conphoneNo),
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      print('Login');
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
                    },
                    child: Text(
                      'Signup',
                      style:
                      TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Does you have account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> Data()));
                          print('signin');
                        },
                        child:Text(
                          'Signup',
                          style:
                          TextStyle(color: Colors.black),
                        ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),],
         ),

        ),
    );
  }
}
