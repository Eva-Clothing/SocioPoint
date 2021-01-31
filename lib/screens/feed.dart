import 'package:socioPoints/helper/dimensions.dart';
import 'package:socioPoints/screens/login.dart';
import 'package:socioPoints/screens/profile.dart';
import 'package:socioPoints/widgets/feed_card.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  
  Widget buildBottomIconButton(IconData icon,Color color)
  {
    return IconButton(
      icon:Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
   
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    
    return SafeArea(
      child:Scaffold(
      appBar: AppBar(
        // elevation: 1,
        backgroundColor: Colors.teal[900],
        leading: Container(
          margin: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            
              child: CircleAvatar(
                 radius: 0,
              backgroundImage:AssetImage('assets/images/dp.jpeg'),
            )
            
          ),
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: vpH*0.03,
            fontWeight:FontWeight.bold,
          ),
        ),
         actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (_) => LoginDemo()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: vpW,
          child: true
                    ? ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return 
                            FeedCards();
                          
                        },
                      )
                    : Center(
                        child: Text('No Upcoming Events Yet!'),
                      ),
              ),
        
          ),
          
        
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           buildBottomIconButton(Icons.home, Colors.teal[900]),
            buildBottomIconButton(Icons.search, Colors.teal[900]),
            buildBottomIconButton(Icons.notifications, Colors.teal[900]),
           IconButton(
            icon:Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
               
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.teal[300],
        onPressed: () {},
      ),
      
      ),
      );
  }
}
