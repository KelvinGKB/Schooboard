import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //Timer(
    //    Duration(seconds: 3),
    //        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
    //        builder: (BuildContext context) => MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      //backgroundColor: Colors.white,
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage('assets/images/background_image/landing.jpg'),
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
                child:Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Column(
                    children: <Widget>[
                      Text("SchoolBoard",
                          style: GoogleFonts.rozhaOne(
                            fontSize: 48,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )
                      ),
                      Text("Forum for TARUCIAN",
                          style: GoogleFonts.prata(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(top:80),
                        padding: EdgeInsets.all(10),
                        //height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  //height: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "Sign In",
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Column(
                                          children: <Widget>[
                                            TextField(
                                              keyboardType: TextInputType.multiline,
                                              maxLines: 1,
                                              textCapitalization: TextCapitalization.sentences,
                                              onChanged: (value) {},
                                              decoration: InputDecoration(
                                                //border: InputBorder.none,
                                                //filled: true,
                                                //fillColor: Color(0xFFFF7F7F7),
                                                //fillColor:Color(0xFFFFEFEE),
                                                //hintText: 'Username',
                                                labelText: "   Username"
                                              ),
                                            ),
                                            SizedBox(height: 20,),
                                            TextField(
                                              keyboardType: TextInputType.multiline,
                                              maxLines: 1,
                                              textCapitalization: TextCapitalization.sentences,
                                              onChanged: (value) {},
                                              decoration: InputDecoration(
                                                //border: InputBorder.none,
                                                //filled: true,
                                                //fillColor: Color(0xFFFF7F7F7),
                                                //fillColor:Color(0xFFFFEFEE),
                                                labelText:"   Password"
                                                //hintText: 'Comment...',
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            GestureDetector(
                                              onTap: (){

                                              },
                                              child: Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "Forgot your Password ?",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 20,),
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Container(
                                                    //width: 100,
                                                    height: 40,
                                                    //color: Colors.indigo,
                                                    child: RaisedButton(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          Text('Login',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      color: Colors.indigo,
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(color: Colors.grey),
                                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => MyHomePage(title: 'SchoolBoard',)),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Text(
                                                "or sign in with",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Container(
                                                    //width: 100,
                                                    height: 40,
                                                    //color: Colors.indigo,
                                                    child: RaisedButton(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          Image.asset(
                                                            "assets/Icon/googleicon.png",
                                                            height: 25.0,
                                                          ),
                                                          Text('   Sign in With Google',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.grey,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      color: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(color: Colors.grey),
                                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Dont have an account ?",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      //fontWeight: FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: (){

                                                    },
                                                    child: Text(
                                                      " Sign Up",
                                                      //textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        //fontWeight: FontWeight.w600,
                                                        color: Colors.indigo,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),

          ],
        ),
      ),
    );
  }
}