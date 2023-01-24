import 'package:e_spot/signup.dart';
import 'package:flutter/material.dart';
import 'gentextformfield.dart';
import 'home page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();

}

class _LoginFormState extends State<LoginForm> {

  var name="",pswd="";
  final _conUserId = TextEditingController();
  final _conpassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
          children: [
            Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image:DecorationImage(
                colorFilter:
                ColorFilter.mode(Colors.black.withOpacity(1),
                    BlendMode.dstATop),
                image: NetworkImage(
                    "https://www.designisthis.com/blog/images/uploads/2012/06/Audi-e-bike-Worthersee-10.jpg"),
                fit: BoxFit.cover),
          )),
       SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 130.0,),
              Text(
                'E-Spot',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 20.0),
              ),
              SizedBox(height: 120.0,),
              getTextFormField(icon: Icons.person,
                hindName: 'User ID', controller: _conUserId,),
              SizedBox(height: 5.0,),
              getTextFormField(icon: Icons.password,
                hindName: 'password', controller: _conpassword,),

              Container(
                margin: EdgeInsets.all(30.0),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    if(_conUserId.text.isNotEmpty&&_conUserId.text.length==1&&_conpassword.text.isNotEmpty&&_conpassword.text.length==1)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> homepage(
                          Username :_conUserId.text,
                          Password :_conpassword.text
                      )));

                    }
                    else
                    {
                      print("invalid password or userid");
                    }
                    print('Login');
                  },
                  child: Text(
                    'Login',
                    style:
                    TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot your login details?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupFom()));
                        print('Forgotpassword');
                      },
                      child:Text(
                        'Forgotpassword',
                        style:



                        TextStyle(color: Colors.white ),
                      ),)
                  ],
                ),
              ),
              SizedBox(height: 120.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Does not have account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupFom()));
                        print('signup');
                      },
                      child:Text(
                        'Signup',
                        style:
                        TextStyle(color: Colors.white ),
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
    );
  }
}
