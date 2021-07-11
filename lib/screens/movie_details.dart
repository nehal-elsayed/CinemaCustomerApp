import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/constants.dart';
import 'seats_screen.dart';

class MovieDetails extends StatelessWidget {
  int movieDetails;
  MovieDetails(this.movieDetails);

  static String id = "movie-details";
  var title = "", description = "", time = "", path = "";

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    int x;
    return StreamBuilder(
        stream: Firestore.instance.collection('movies').snapshots(),
        builder: (context, snapshot) {
          QuerySnapshot values = snapshot.data;
          x = values.size;
          if (!snapshot.hasData) return Text('no data');
          return Scaffold(
            backgroundColor: kBackGroundColor,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kPinkColor,
              title: Text(
                snapshot.data.documents[movieDetails]['title'].toString(),
                style:kSeatsTitleStyle,
              ),
              toolbarHeight: mediaQuery.height * 0.07,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded, color: kFontColor),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: mediaQuery.height * 0.02,
                    horizontal: mediaQuery.width * 0.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        (Uri.parse(snapshot.data.documents[movieDetails]['path'])
                            .toString()),
                        height: mediaQuery.height * 0.50,
                        width: mediaQuery.width * 0.50,
                        //fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.03,
                    ),
                    Center(
                      child: Text(
                        snapshot
                          .data.documents[movieDetails]['description']
                          .toString(),style: kDescriptionTextStyle,),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.02,
                    ),
                    Center(
                      child: Text(snapshot.data.documents[movieDetails]['time']
                          .toString(), style:kDescriptionTextStyle ,),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.09,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeatsScreen(title:snapshot.data.documents[movieDetails]['title'].toString(),docmentNumber: movieDetails,)),
                        );
                      },
                      color: kFontColor,
                      //minWidth: mediaQuery.width * 0.64,
                      height: mediaQuery.height * 0.06,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Book Your Seat!', style: kBottomButtonTextStyle),
                    ),

                  ],
                ),
              ),
            ),

          );
        }
    );
  }
}
