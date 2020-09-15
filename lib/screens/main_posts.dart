import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schooboard/widgets/followingposts.dart';
import 'package:schooboard/widgets/homeposts.dart';
import 'package:schooboard/widgets/popularposts.dart';
import 'package:schooboard/widgets/search.dart';


class main_posts extends StatefulWidget {

  @override
  _main_postsState createState() => _main_postsState();
}

class _main_postsState extends State<main_posts> with TickerProviderStateMixin {

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Home'),
    Tab(text: 'Popular'),
    Tab(text: 'Following'),
  ];

  final _mainPostsTabs = <Widget>
  [
    homeposts(),
    popularposts(),
    followingposts(),
    //RecentChats(),
  ];

  TabController _PostTabController;

  @override
  void initState() {
    super.initState();
    _PostTabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _PostTabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title:Container(
          //padding: const EdgeInsets.only(top: 10),
          //color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("SchoolBoard",
                  style: GoogleFonts.rozhaOne(
                    fontSize: 24,
                    color: Colors.black,
                  )
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => search_feature()),
                  );
                },
                child:Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      IconButton(
                        color: Colors.grey,
                        icon: new Icon(Icons.search),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => search_feature()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottom: TabBar(

          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
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

          controller: _PostTabController,
          tabs: myTabs,

        ),

      ),
      body: TabBarView(
        controller:  _PostTabController,
        children: _mainPostsTabs,
      ),

    );
  }


}