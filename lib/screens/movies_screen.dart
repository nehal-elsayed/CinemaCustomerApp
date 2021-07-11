import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'movie_details.dart';
import 'package:flash_chat/constants.dart';
import 'welcome_screen.dart';

class MovieScreen2 extends StatelessWidget {
  static String id = "movies-screen2";
  var title = "", description = "", time = "", path = "";
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    int x;
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPinkColor,
        title: Text(
          'Movies',
          style: kMovieTitleStyle,
        ),
        toolbarHeight: mediaQuery.height * 0.07,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.logout, color: kFontColor),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                        (Route<dynamic> route) => false);
              }
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            //vertical: mediaQuery.height * 0.00,
            //horizontal: mediaQuery.width * 0.01
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            StreamBuilder(
                stream: Firestore.instance.collection('movies').snapshots(),
                builder: (context, snapshot) {
                  QuerySnapshot values = snapshot.data;
                  x = values.size;
                  if (!snapshot.hasData) return Text('no data');
                  return GridView.count(
                    crossAxisCount: 2,
                    children: [
                      for (int i = 0; i < x; i++)
                        FlatButton(
                           onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MovieDetails(i)),
                            );
                          },
                          child: Card(
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(50.0),
                            // ),
                            elevation: 10,
                            child: GridTile(

                              footer: Container(
                                color: Colors.black45,
                                height: mediaQuery.height * 0.05,
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(bottom: 5.0),
                                child:
                                ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(bottom: 17.0),
                                    child: Text(
                                      snapshot.data.documents[i]['title'].toString(),
                                      style: kButtonTextStyle
                                    ),
                                  ),
                                ),
                              ),
                              child: Container(
                                //padding:  const EdgeInsets.only(bottom: 17.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Image.network(
                                  (Uri.parse(snapshot.data.documents[i]['path'])
                                      .toString()),
                                  // height: mediaQuery.height * 0.80,
                                  // width: mediaQuery.width * 0.35,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                }),
          ],
        ),
      ),
      // persistentFooterButtons: [
      //   Container(
      //     width:mediaQuery.width,
      //     height:mediaQuery.height *0.05,
      //     child: Row(
      //       //mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Expanded(
      //           child: FlatButton(
      //             //color: kFontColor,
      //             child: Text('Add New Movie',
      //               style: kBottomButtonTextStyle,
      //             ),
      //             onPressed: (){
      //               // Navigator.push(
      //               //   context,
      //               //   MaterialPageRoute(builder: (context) => NewMovie()),
      //               // );
      //             },
      //           ),
      //         )
      //       ],
      //     ),
      //   )
      // ],
    );
  }
}
