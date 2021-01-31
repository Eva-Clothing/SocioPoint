import 'package:provider/provider.dart';
import 'package:socioPoints/screens/feed.dart';
import 'package:flutter/material.dart';
import 'package:socioPoints/screens/wrapper.dart';
import 'package:socioPoints/services/auth.dart';

import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return  StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
      title: 'SocioPoints',
      home: Wrapper(),),);
  
  }
}
