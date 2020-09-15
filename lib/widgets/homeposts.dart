import 'package:flutter/material.dart';
import 'package:schooboard/models/posts.dart';
import 'package:schooboard/models/users_model.dart';
import 'package:schooboard/screens/post_reply.dart';
import 'package:schooboard/screens/post_reply_test.dart';
import 'lib/models/users_model.dart';

// ignore: camel_case_types
class homeposts extends StatelessWidget{


  @override
  void _sortFilterModalBottomSheet(context) {
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

  void _optionModalBottomSheet(context) {
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


  @override

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child:
        Container(
          //constraints: (M),
           //height: 600,
           //color: Colors.green,
          child: Column(
            children: <Widget>[
              Expanded(
                //flex:6,
                child:ListView.builder(
                  shrinkWrap: true,
                  //controller: _scrollBottomBarController2,
                  //scrollDirection: Axis.horizontal,
                  itemCount: posts.length,
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
                                            tag: post.imageUrl,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(80.0),
                                              child: Image(
                                                height: 50.0,
                                                width: 50.0,
                                                image: AssetImage(post.imageUrl),
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
                                                user.name,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                post.post_time,
                                                style: TextStyle(
                                                  fontSize: 12,
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
                                                  _optionModalBottomSheet(context);
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
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => post_reply_test()),
                                                    );
                                                  },
                                                  child: Text(
                                                    post.title,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                GestureDetector(
                                                  onTap: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => post_reply()),
                                                    );
                                                  },
                                                  child: Text(
                                                    post.description,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 15),
                                                  child: Hero(
                                                    tag: post.imageUrl+"hih",
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      child: Image(
                                                        image: AssetImage(post.imageUrl),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
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
                                                          Text(
                                                            "2",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors.grey,
                                                            ),
                                                          ),
                                                          IconButton(
                                                            icon: Icon(Icons.comment),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(builder: (context) => post_reply()),
                                                              );
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
            ],
          ),
        ),
        ),
      ],
    );

  }

}