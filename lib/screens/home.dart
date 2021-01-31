import 'package:socioPoints/helper/dimensions.dart';
import 'package:socioPoints/screens/login.dart';
import 'package:socioPoints/screens/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return 
Container(
  color: Colors.blue[100],
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.spaceEvenly
          ,           
          children: <Widget>[
            Container(
              height: vpH*0.4,
              width: vpW*0.9,
              child: Image.asset('assets/images/1.png',fit: BoxFit.cover,),
  
            ),
         
            Row(
              children: <Widget>[
                SizedBox(width: 20,),
                Expanded(
                    child: MaterialButton(
                  color: Colors.white,
                  splashColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
                  onPressed: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  LoginDemo()));
                   
                  },
                  child: Text("Login"),
                )),
                  Expanded(
                    child: MaterialButton(
                  color: Colors.white,
                  splashColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),                      
                      side: BorderSide(color: Colors.black)),
                  onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SignUp()));},
                  child: Text("Register Now"),
                )),
                         ],
            ),
 
          ],
        ),
      );
  }
}
