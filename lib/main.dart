import 'package:socioPoints/screens/feed.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocioPoints',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green,
      primaryColorBrightness: Brightness.light,
      visualDensity:VisualDensity.adaptivePlatformDensity
      ),
      home: FeedPage(title: 'SocioPoints'),
    );
  }
}
