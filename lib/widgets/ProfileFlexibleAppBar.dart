import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfileFlexiableAppBar extends StatelessWidget {

  final double appBarHeight = 66.0;

  const ProfileFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child: new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left:15.0),
                     child: Row(
                       children: <Widget>[
                         CircleAvatar(
                           radius: 35.0,
                           backgroundImage: AssetImage("assets/images/profile_image/harris.jpg"),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 15,bottom: 15),
                           child: Text('Chiater_0310',
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 16.0,
                                 fontWeight: FontWeight.w600
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0,top: 15,left: 5),
                        child: new Text(
                            "CHIA TER \n00' \n+60 JB \nTARUCIAN KL",
                            style: const TextStyle(
                                color: Colors.black,
                                //fontFamily: 'Poppins',
                                fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                      ),),

                  ],),
              ),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0,left:30.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              new Text(
                                  "5",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      //fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  )
                              ),
                              Column(
                                children: <Widget>[
                                  new Text(
                                      "Post",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          //fontFamily: 'Poppins',
                                          fontSize: 14.0
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: <Widget>[
                                new Text(
                                    "30",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        //fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),
                                Column(
                                  children: <Widget>[
                                    new Text(
                                        "Follow",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            //fontFamily: 'Poppins',
                                            fontSize: 14.0
                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: <Widget>[
                                new Text(
                                    "25",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        //fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                       fontWeight: FontWeight.w600,
                                    )
                                ),
                                Column(
                                  children: <Widget>[
                                    new Text(
                                        "Follower",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            //fontFamily: 'Poppins',
                                            fontSize: 14.0
                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              print("HIHIHI");
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: RaisedButton(
                                color: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  //side: BorderSide(color: Colors.red),
                                ),
                                onPressed: () {
                                  Navigator.maybePop(context);
                                },
                                child: Text('Profile Info',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      //fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),),

                  ],),
              ),
            ],)
      ),
    );
  }
}