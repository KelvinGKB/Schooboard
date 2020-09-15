import 'package:flutter/material.dart';
import 'package:schooboard/models/posts.dart';
import 'package:schooboard/models/users_model.dart';

class post_reply_test extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: _buildCommentComposer(),
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onPanDown: (_) {
            FocusScope.of(context).requestFocus(FocusNode());
          },
        child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                //backgroundColor: Colors.cyan,
                leading:  Container(
                  margin: EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.maybePop(context);
                    },
                  ),
                ),
                title: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Container(
                        //margin: EdgeInsets.only(top: 11,left: 10),
                        child: InkWell(
                          child: Text(
                            "View Posts",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 10.0,),),
              SliverToBoxAdapter(
                child: _buildPost(context),
              ),
              SliverToBoxAdapter(
                child:  Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: _buildNumberReply(context),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: _buildReply(context),
                ),
              ),
            ],
          ),
      ),
    );
  }


  Widget _buildNumberReply(BuildContext context){
  return  Row(
    children: <Widget>[
      Text(
        "Replies (20)",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      Spacer(),
      IconButton(
        padding: EdgeInsets.only(right: 20),
        icon: Icon(Icons.filter_list),
        onPressed: () {
          _sortFilterModalBottomSheet2(context);
        },
      ),
    ],
  );
  }

  Widget _buildPost(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding:EdgeInsets.all(10.0),
        child: Container(
          //height: 250.0,
          //constraints: ,
          //width: 310.0,
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  //color: Colors.green,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(top: 5.0),
                        child: Hero(
                          tag: "assets/images/profile_image/candy.jpg",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80.0),
                            child: Image(
                              height: 50.0,
                              width: 50.0,
                              image: AssetImage("assets/images/profile_image/austin.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Austin",
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "10:30",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          Container(
                            padding:EdgeInsets.only(bottom: 20.0),
                            child:
                            IconButton(
                              icon: Icon(Icons.more_horiz),
                              onPressed: () {
                                _optionModalBottomSheet2(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.blue,
                  margin:EdgeInsets.only(right: 10.0) ,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding:EdgeInsets.symmetric(vertical: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 5.0),
                              GestureDetector(
                                onTap: (){
                                },
                                child: Text(
                                  "Doing our research method at the moment !",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: (){
                                },
                                child: Text(
                                  "When do we have to submit the report ??",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding:EdgeInsets.only(right: 20.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "25",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.favorite_border),
                                          onPressed: () {

                                          },
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }

  _buildReply(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Expanded(
        //flex:6,
        child:ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          //controller: _scrollBottomBarController2,
          //scrollDirection: Axis.horizontal,
          //itemCount: posts.length,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index){
            Posts post = posts[index];
            Users user = users[index];
            //print(user.name);
            return Container(
              padding: EdgeInsets.all(10),
              //height: 800,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    //height: 250.0,
                    //constraints: ,
                    //width: 310.0,
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            //color: Colors.green,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:EdgeInsets.only(top: 5.0),
                                  child: Hero(
                                    tag: "assets/images/profile_image/austin.jpg/",
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(80.0),
                                      child: Image(
                                        height: 50.0,
                                        width: 50.0,
                                        image: AssetImage("assets/images/profile_image/austin.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Austin",
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "10:30",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding:EdgeInsets.only(bottom: 20.0),
                                      child:
                                      IconButton(
                                        icon: Icon(Icons.more_horiz),
                                        onPressed: () {
                                          _optionModalBottomSheet2(context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            //color: Colors.blue,
                            margin:EdgeInsets.only(right: 10.0) ,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                    padding:EdgeInsets.symmetric(vertical: 0.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 5.0),
                                        GestureDetector(
                                          onTap: (){
                                          },
                                          child: Text(
                                            post.title,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        GestureDetector(
                                          onTap: (){
                                          },
                                          child: Text(
                                            post.description,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              padding:EdgeInsets.only(right: 20.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "25",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(Icons.favorite_border),
                                                    onPressed: () {
                                                    },
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            ),
                          )
                        ],

                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          //itemBuilder: (BuildContext context, int index){}
        ),
      ),
    );
  }

  _buildCommentComposer() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints(
            //maxWidth: 90,
            minHeight: 80,
            maxHeight: 300,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1, color: Colors.black12),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            //height: 70.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textCapitalization: TextCapitalization.sentences,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xFFFF7F7F7),
                        //fillColor:Color(0xFFFFEFEE),
                        hintText: 'Comment...',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 24.0,
                  //color: Theme.of(context).primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void _sortFilterModalBottomSheet2(context) {
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

  void _optionModalBottomSheet2(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        builder: (BuildContext bc) {
          return Container(
            //margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.flag),
                  title: Text('Report'),
                  subtitle: Text('this posts violated rules'),
                  onTap: () {
                    print('camel');
                  },
                  enabled: false,
                ),
                ListTile(
                  leading: Icon(Icons.turned_in_not),
                  title: Text('Save'),
                  subtitle: Text('save in my favourited'),
                  onTap: () {
                    print('horse');
                  },
                  selected: true,
                ),
                ListTile(
                  leading:Icon(Icons.message),
                  title: Text('Inbox'),
                  subtitle: Text("private message kengboon"),
                  onTap: () {
                    print('cow');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.block),
                  title: Text('Unfolllow this user'),
                  subtitle: Text('no more posts from kengboon'),
                  onTap: () {
                    print('sheep');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.cancel),
                  title: Text('Hide this post'),
                  subtitle: Text("I don't want to see this post"),
                  onTap: () {
                    print('goat');
                  },
                ),
              ],
            ),
          );
        }
    );
  }



}

