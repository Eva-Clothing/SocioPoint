
import 'package:socioPoints/helper/dimensions.dart';
import 'package:flutter/material.dart';


class PostsCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    var heading = TextStyle(fontSize: vpH * 0.028, fontWeight: FontWeight.bold);

    return 
        Padding(
          padding: EdgeInsets.symmetric(vertical: vpH * 0.03),
          child: Container(
            // height: vpH * 0.4,
            width: vpW * 0.8,
            decoration: BoxDecoration(
              
              color: Theme.of(context).cardColor,
              boxShadow: [
               
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: vpH * 0.02, horizontal: vpW * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Title',
                      style: heading,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: vpH * 0.005, horizontal: vpW * 0.05),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                     "Hi Guys, Welcome to Proto Coders Point, In this Flutter tutorial, we will learn how to create a profile page UI Design app using Dart and Flutter. A quick sample app on how to implement a flutter profile page.In will be Simple Profile Page UI Design using flutter to build social media profile UI.",
                      style: TextStyle(fontSize: vpH * 0.018),
                    ),
                  ),
                ),
               
              ],
            ),
          ),
      
    );
  }
}
