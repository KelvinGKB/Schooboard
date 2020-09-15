import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schooboard/screens/main_dashboard.dart';
import 'package:schooboard/screens/main_posts.dart';
import 'package:schooboard/screens/main_profile.dart';
import 'package:schooboard/screens/spash_screen.dart';
import 'package:schooboard/widgets/create_post.dart';
import 'package:schooboard/widgets/homeposts.dart';
import 'bottom_app_bar.dart';
import 'fab_with_icons.dart';
import 'layout.dart';
import 'package:schooboard/widgets/search.dart';
import 'package:schooboard/screens/main_inbox.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SchoolBoard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({ Key key }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  int _lastSelected = 0;

  //Widget _lastSelected = main_inbox();
  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;

      if(index == 2)
        {
          _createPostModalBottomSheet(context);
        }

    });
  }

  final _mainBtmTabs = <Widget>
  [
    main_posts(),
    main_dashboard(),
    main_posts(),
    main_inbox(),
    ProfileCollapsingToolbar(),
    //RecentChats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body://main_posts(),
        _mainBtmTabs[_lastSelected],
        //TabBarView(
        //controller: _tabController,
        //children: _mainPostsTabs,


      bottomNavigationBar: MainBottomAppBar(

        color: Colors.grey,
        selectedColor: Colors.indigo,
        //notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,

        items: [
          BottomAppBarItem(iconData: Icons.home, text: 'Home'),
          BottomAppBarItem(iconData: Icons.dashboard, text: 'More'),
          BottomAppBarItem(iconData: Icons.add_circle_outline, text: 'Post'),
          BottomAppBarItem(iconData: Icons.inbox, text: 'Inbox'),
          BottomAppBarItem(iconData: Icons.account_circle, text: 'Me'),
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButton: _buildFab(context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  Widget _createPostModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (BuildContext bc) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onPanDown: (_) {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Container(
              //height: MediaQuery.of(context).size.height * 0.75,
              padding: MediaQuery.of(context).viewInsets,
              //height: 300,
              child: new Wrap(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.clear,
                        ),
                        iconSize: 24,
                        //color: Colors.green,
                        //splashColor: Colors.purple,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),

                        Text(
                          'Post Something',
                          style:TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            //letterSpacing: 1.0,
                          ),
                        ),

                      //Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: Text(
                          'POST',
                          style:TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            //letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(

                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          maxLength: 200,
                          textCapitalization: TextCapitalization.sentences,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                            //border: InputBorder.none,
                            //filled: true,
                            //fillColor: Color(0xFFFF7F7F7),
                            //fillColor:Color(0xFFFFEFEE),
                            //hintText: 'Username',
                              labelText: "Write you title"
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          //keyboardType: TextInputType.multiline,
                          maxLines: null,
                          textCapitalization: TextCapitalization.sentences,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              //border: OutlineInputBorder(),
                            //border: InputBorder.none,
                            //filled: true,
                            //fillColor: Color(0xFFFF7F7F7),
                            //fillColor:Color(0xFFFFEFEE),
                            //hintText: 'Username',
                              labelText: "Description (optional)"
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: new BoxDecoration(
                            //color: Colors.grey,
                            border:  Border(
                              bottom: BorderSide(width: 1.0, color: Colors.grey),
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.camera_alt),
                                    title: Text('Take Photo'),
                                    onTap: () {
                                      print('camel');
                                    },
                                    //enabled: false,
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.photo_library),
                                    title: Text('Choose from Album'),
                                    onTap: () {
                                      print('horse');
                                    },
                                    //selected: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }



}



