
import 'package:flutter/material.dart';
import 'package:schooboard/widgets/ProfileFlexibleAppBar.dart';
import 'package:schooboard/widgets/profile_favourited.dart';
import 'package:schooboard/widgets/profile_posts.dart';

class ProfileCollapsingToolbar extends StatefulWidget {
  @override
  _ProfileCollapsingToolbarState createState() => _ProfileCollapsingToolbarState();
}

class _ProfileCollapsingToolbarState extends State<ProfileCollapsingToolbar> {

  final _mainProfileTabs = <Widget>
  [
    profile_posts(),
    profile_favourited(),
    //RecentChats(),
  ];

  TabController _profiletabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                brightness: Brightness.light,
                backgroundColor: Colors.white,
                //leading: IconButton(
                //  icon: Icon(Icons.arrow_back,color: Colors.black,),
                //  onPressed: () {
                    //var index = 0;
                    //print(index);
                //    Navigator.maybePop(context);
                //  },
                //),
                actions: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(Icons.settings,color: Colors.black,),
                      onPressed: () {
                        //Navigator.maybePop(context);
                      },
                    ),
                  ),
                ],
                title: Text('Me',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600
                  ),),
                expandedHeight: 270.0,
                //floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    //centerTitle: true,
                    background:ProfileFlexiableAppBar(),
                   ),

              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    controller: _profiletabController,
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
                    tabs: [
                      Tab(text: "Posts"),
                      Tab(text: "Favourited"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Container(
            child: TabBarView(
              children: _mainProfileTabs,
              controller: _profiletabController,
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
