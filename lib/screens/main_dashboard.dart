import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schooboard/widgets/notification.dart';
import 'package:schooboard/widgets/recent_chats.dart';
import 'package:schooboard/widgets/room_chats.dart';
//import 'bottom_app_bar.dart';
//import 'fab_with_icons.dart';



class main_dashboard extends StatefulWidget {
  @override
  _main_dashboardState createState() => _main_dashboardState();
}



class _main_dashboardState extends State<main_dashboard> with TickerProviderStateMixin {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar:AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        //leading: IconButton(
        //  icon: Icon(Icons.arrow_back),
        //  onPressed: () {
            //var index = 0;
            //print(index);
        //    Navigator.maybePop(context);
        //  },
        //),
        //backgroundColor: Colors.indigo,
        title: Text(
          "Dashboard",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 0,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                //Navigator.maybePop(context);
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Under Construction"
          ),
        ),
      ),
    );
  }


}