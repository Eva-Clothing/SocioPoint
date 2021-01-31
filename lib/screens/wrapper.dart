
import 'package:socioPoints/models/user.dart';
import 'package:socioPoints/screens/feed.dart';
import 'package:socioPoints/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    
    final user = Provider.of<User>(context);
    
      // return either Home or Authenticate widget
    if(user == null){
      return LoginDemo();

    }else{
      return FeedPage() ;
    }
    


    
  }
}