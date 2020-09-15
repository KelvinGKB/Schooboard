import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schooboard/widgets/notification.dart';
import 'package:schooboard/widgets/recent_chats.dart';
import 'package:schooboard/widgets/room_chats.dart';
//import 'bottom_app_bar.dart';
//import 'fab_with_icons.dart';



class main_inbox extends StatefulWidget {
  @override
  _main_inboxState createState() => _main_inboxState();
}



class _main_inboxState extends State<main_inbox> with TickerProviderStateMixin {

  final List<Tab> inboxTabs = <Tab>[
    Tab(text: 'Notification'),
    Tab(text: 'Rooms'),
    Tab(text: 'Direct'),
  ];

  final _inboxPages = <Widget>
  [
    Notification_Inbox(),
    RoomsChat(),
    RecentChats(),
  ];

  TabController _inboxtabController;

  @override
  void initState() {
    super.initState();
    _inboxtabController = TabController(vsync: this, length: inboxTabs.length);
  }

  @override
  void dispose() {
    _inboxtabController.dispose();
    super.dispose();
  }

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
          "Message",
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
        bottom: TabBar(

          indicatorColor: Colors.transparent,
          labelStyle:
          TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
            color: Colors.black,
          ),


          unselectedLabelStyle:
          TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.0,
            color: Colors.black,
          ),

          controller: _inboxtabController,
          tabs: inboxTabs,

        ),
      ),
      body: Column(
        children: <Widget>[
          //CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Container(
                  child: TabBarView(
                    children: _inboxPages,
                    controller: _inboxtabController,
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}