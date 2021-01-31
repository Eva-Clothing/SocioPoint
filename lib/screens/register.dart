import 'package:socioPoints/helper/constants.dart';
import 'package:socioPoints/helper/dimensions.dart';
import 'package:socioPoints/screens/feed.dart';
import 'package:flutter/material.dart';
import 'package:socioPoints/services/auth.dart';


class SignUp extends StatefulWidget {
   final Function toggleView;
   SignUp({this.toggleView});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

   final AuthService _auth = AuthService();
   final _formKey = GlobalKey<FormState>();
   
  String email = '';
  String password = '';
   String error = '';

  @override
  Widget build(BuildContext context) {
    
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text("Sign Up",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: vpH*0.02),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                   
                    child: Image.asset('assets/images/2.png')),
              ),
            ),
              Padding(
            
              padding: EdgeInsets.symmetric(horizontal: vpW*0.02,vertical: vpH*0.02),
              child: TextFormField(
                 validator: (val) => val.isEmpty ? 'Enter an Email': null,
                  decoration: textInputDecoration.copyWith(hintText:'Email',prefixIcon: Icon(Icons.email)),
                  onChanged: (val){
                    setState(() => email = val);
                  },
                // decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Full Nmae',
                //     hintText: 'Enter Full Name'),
              ),
            ),
            // Padding(
            //    padding: EdgeInsets.symmetric(horizontal: vpW*0.02,vertical: vpH*0.02),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         labelText: 'Email',
            //         hintText: 'Enter valid email id as abc@gmail.com'),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                 validator: (val) => val.length<6 ? 'Enter a password more than 6 characters ': null,
                  obscureText: true,
                  decoration: textInputDecoration.copyWith(hintText:'Password',prefixIcon: Icon(Icons.lock)),
                  onChanged: (val){
                    setState(() => password = val);
                  },
                // obscureText: true,
                // decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Password',
                //     hintText: 'Enter secure password'),
              ),
            ),
            //  Padding(
            //   padding: EdgeInsets.symmetric(horizontal: vpW*0.02,vertical: vpH*0.02),
            //   child: TextField(

            //     obscureText: true,
            //     decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         labelText: 'RePassword',
            //         hintText: 'Re Enter secure password'),
            //   ),
            // ),
            
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.teal[300], borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () 
                  async{
                     if(_formKey.currentState.validate()){
                      
                       dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                       if(result == null){
                         setState(() {error = 'Enter a valid email';
                       
                         });
                       }

                     }
                  
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: vpH*0.08,
            ),
            SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already Registered?  ',style: TextStyle(color: Colors.black, fontSize: vpH*0.025),),
                  GestureDetector(
                    child:Text('Log In', 
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: vpH*0.028,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  onTap:() {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FeedPage()));
                  },
                ),
              ],
            ),
           
           
          ],
        ),
      ),
    );
  }
}