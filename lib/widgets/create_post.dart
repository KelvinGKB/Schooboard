import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schooboard/screens/main_posts.dart';
import 'package:schooboard/widgets/notification.dart';
import 'package:schooboard/widgets/recent_chats.dart';
import 'package:schooboard/widgets/room_chats.dart';
//import 'bottom_app_bar.dart';
//import 'fab_with_icons.dart';



class create_post extends StatefulWidget {
  @override
  _create_postState createState() => _create_postState();
}



class _create_postState extends State<create_post> with TickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      this._createModalBottomSheet(context);
    });
  }

  @override
  void _createModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.all(25),
            //height: 300,
            child: new Wrap(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    Text(
                      'Filter By',
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        //fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return main_posts();
  }



}