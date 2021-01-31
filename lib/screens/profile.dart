import 'package:socioPoints/helper/dimensions.dart';
import 'package:socioPoints/widgets/points_card.dart';
import 'package:socioPoints/widgets/posts_card.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

bool _postsPressed = false;

  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return SafeArea(
      child: Scaffold(
        body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: vpH*0.7,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              title: Text('20 Points'),
              background:Container(
                color: Colors.white,
                child:Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:  AssetImage('assets/images/dp.jpeg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      width: double.infinity,
                      height: vpH*0.2,
                      child: Container(
                        alignment: Alignment(0.0,1.8),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/dp.jpeg'),
                          radius: 40.0,
                        ),
                      ),
                      ),
                    ),
                  SizedBox(
                    height: vpH*0.05,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: vpW*0.05),
                    child: Column(
                      children: <Widget>[
                        Text("Name",
                          style: TextStyle(
                            fontSize: 25.0,
                            color:Colors.black45,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "@UserId",
                          style: TextStyle(
                            fontSize: 18.0,
                            color:Colors.grey,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                        child:
                          Text(
                            "App Developer at XYZ Company.App Developer at XYZ Company.App Developer at XYZ Company.App Developer at XYZ Company.App Developer at XYZ Company",
                            style: TextStyle(
                              fontSize: 15.0,
                              color:Colors.black45,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: vpH*0.005,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("15 ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(" Following",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("15 ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(" Followers",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ), 
                      ],
                    ),
                  ),
                  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: vpH * 0.006,
                                      horizontal: vpW * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(Icons.emoji_emotions),
                                      iconSize: vpW * 0.080,
                                      color: Colors.yellow,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: vpH * 0.006,
                                      horizontal: vpW * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(Icons.emoji_emotions),
                                      iconSize: vpW * 0.080,
                                      color: Colors.orange,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: vpH * 0.006,
                                      horizontal: vpW * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                      icon: Icon(Icons.emoji_emotions),
                                      iconSize: vpW * 0.080,
                                      color: Colors.orange[200],
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                             
                              ],
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: vpH * 0.006,
                                      horizontal: vpW * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child:  Text('Support'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: vpH * 0.006,
                                      horizontal: vpW * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Empathy'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: vpH * 0.006,
                                      horizontal: vpW * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Gratitude'),
                                  ),
                                ),
                             
                              ],
                            ),
                ],
            ),),
            ),
          ),
         
        SliverFillRemaining(
          child:SingleChildScrollView(

          child:Column(
            children:[
              Padding(
                  padding: EdgeInsets.symmetric(vertical: vpH*0.005),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: 
                      FlatButton(
                        child: Text(
                          'Points',style: TextStyle(fontSize: vpH*0.03),
                        ),
                        textColor:
                            !_postsPressed ? Colors.white : Colors.black,
                        color: !_postsPressed
                            ? Colors.teal[300]
                            : Colors.white,
                        onPressed: () => {
                          setState(() {
                            _postsPressed = false;
                          })
                        },
                      ),),
                     Expanded(child: 
                      FlatButton(
                        child: Text( 'Posts',style: TextStyle(fontSize: vpH*0.03)),
                        textColor:
                            _postsPressed ? Colors.white : Colors.black,
                        color: _postsPressed
                            ? Colors.teal[300]
                            : Colors.white,
                        onPressed: () => {
                          setState(() {
                            _postsPressed = true;
                          })
                        },
                      ),),
                    ],
                  )),
             
             Container(
                    child:_postsPressed
                    ? ListView.builder(physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 20,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return PostsCard();
                        },
                      )
                      :
                      ListView.builder(physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 20,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return PointsCard();
                        },
                      )),
                
              
              
            ],),
          ),
        ),
      
        ],
        
      ),
       
      )
    );
  
  }
}