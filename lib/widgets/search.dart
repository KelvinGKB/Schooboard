import 'package:flutter/material.dart';

class search_feature extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        //backgroundColor: Colors.indigo,
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.only(top:12,left: 15),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(25.0),
                            ),
                          ),
                          filled: true,
                          //labelText: "Search",
                          hintStyle: new TextStyle(color: Colors.grey),
                          hintText: "Search...",
                          fillColor: Colors.white),
                    ),
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top: 11,left: 10),
                child: InkWell(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child:  Container(
          color: Colors.white,
          child: Center(
            child: Text(
                "Search Page Under Construction"
            ),
          ),
        ),
      ),
    );
  }
}