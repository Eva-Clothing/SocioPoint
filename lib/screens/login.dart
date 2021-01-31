import 'package:flutter/material.dart';
import 'package:socioPoints/helper/dimensions.dart';
import 'package:socioPoints/screens/feed.dart';
import 'package:socioPoints/screens/register.dart';


class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    
    return SafeArea(
      child:Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        
        backgroundColor: Colors.teal[700],
        title: Text("Login Page",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                   
                    child: Image.asset('assets/images/2.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: vpW*0.015),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
            
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
             Padding(
              padding:  EdgeInsets.symmetric(horizontal: vpW*0.015,vertical: vpH*0.02),
            child:Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.teal[300], borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FeedPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),),
            SizedBox(
              height: 130,
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New User? ',style: TextStyle(color: Colors.black, fontSize: vpH*0.025),),
                  GestureDetector(
                    child:Text('Create Account', 
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: vpH*0.026,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  onTap:() {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  }
}