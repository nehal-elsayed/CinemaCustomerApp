import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/cinema_seats.dart';
import 'package:flash_chat/constants.dart';

class SeatsScreen extends StatefulWidget {
  static String id = 'seats_screen';
  String title;
  int docmentNumber;
  SeatsScreen({this.title,this.docmentNumber});
  @override
  _SeatsScreenState createState() => _SeatsScreenState(title: title, docmentNumber:docmentNumber);
}

class _SeatsScreenState extends State<SeatsScreen> {
  _SeatsScreenState({this.title, this.docmentNumber});
  String title ;
  int docmentNumber;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return StreamBuilder(
        stream: Firestore.instance.collection('movies').snapshots(),
    builder: (context, snapshot) {
      QuerySnapshot values = snapshot.data;
      // x = values.size;
      if (!snapshot.hasData) return Text('no data');
      return Scaffold(
        backgroundColor: kBackGroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPinkColor,
          title: Text(
            'Choose Your Seats',
            style: kSeatsTitleStyle,
          ),
          toolbarHeight: mediaQuery.height * 0.07,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: kFontColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: mediaQuery.height * 0.05,
                horizontal: mediaQuery.width * 0.01),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // First Seat Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //(2, snapshot.data.documents[0]['seat7'].toString()
                      CinemaSeat(1,isReserved: snapshot.data.documents[docmentNumber]['seat1'],movieName: snapshot.data.documents[docmentNumber]['title'],),
                      CinemaSeat(2,isReserved: snapshot.data.documents[docmentNumber]['seat2'],movieName: snapshot.data.documents[docmentNumber]['title']),
                       CinemaSeat((3),isReserved:  snapshot.data.documents[docmentNumber]['seat3'],movieName: snapshot.data.documents[docmentNumber]['title']),
                       CinemaSeat((4),isReserved:  snapshot.data.documents[docmentNumber]['seat4'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      SizedBox(
                        width: (MediaQuery
                            .of(context)
                            .size
                            .width / 12) * 2,
                      ),
                       CinemaSeat((5),isReserved:  snapshot.data.documents[docmentNumber]['seat5'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((6),isReserved:  snapshot.data.documents[docmentNumber]['seat6'],movieName: snapshot.data.documents[docmentNumber]['title']),
                       CinemaSeat((7),isReserved:  snapshot.data.documents[docmentNumber]['seat7'],movieName: snapshot.data.documents[docmentNumber]['title']),
                       CinemaSeat((8),isReserved:  snapshot.data.documents[docmentNumber]['seat8'],movieName: snapshot.data.documents[docmentNumber]['title']),
                        CinemaSeat((9),isReserved:  snapshot.data.documents[docmentNumber]['seat9'],movieName: snapshot.data.documents[docmentNumber]['title']),

                    ],
                  ),
                  // Second Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CinemaSeat((10),isReserved:  snapshot.data.documents[docmentNumber]['seat10'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((11),isReserved:  snapshot.data.documents[docmentNumber]['seat11'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((12),isReserved:  snapshot.data.documents[docmentNumber]['seat12'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((13),isReserved:  snapshot.data.documents[docmentNumber]['seat13'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      SizedBox(
                        width: (MediaQuery
                            .of(context)
                            .size
                            .width / 12) * 2,
                      ),
                      CinemaSeat((14),isReserved:  snapshot.data.documents[docmentNumber]['seat14'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((15),isReserved:  snapshot.data.documents[docmentNumber]['seat15'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((16),isReserved:  snapshot.data.documents[docmentNumber]['seat16'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((17),isReserved:  snapshot.data.documents[docmentNumber]['seat17'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((18),isReserved:  snapshot.data.documents[docmentNumber]['seat18'],movieName: snapshot.data.documents[docmentNumber]['title']),
                    ],
                  ),
                  // Third  Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CinemaSeat((19),isReserved:  snapshot.data.documents[docmentNumber]['seat19'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((20),isReserved:  snapshot.data.documents[docmentNumber]['seat20'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((21),isReserved:  snapshot.data.documents[docmentNumber]['seat21'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((22),isReserved:  snapshot.data.documents[docmentNumber]['seat22'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      SizedBox(
                        width: (MediaQuery
                            .of(context)
                            .size
                            .width / 12) * 2,
                      ),
                      CinemaSeat((23),isReserved:  snapshot.data.documents[docmentNumber]['seat23'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((24),isReserved:  snapshot.data.documents[docmentNumber]['seat24'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((25),isReserved:  snapshot.data.documents[docmentNumber]['seat25'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((26),isReserved:  snapshot.data.documents[docmentNumber]['seat26'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((27),isReserved:  snapshot.data.documents[docmentNumber]['seat27'],movieName: snapshot.data.documents[docmentNumber]['title']),

                    ],
                  ),
                  // 4TH Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CinemaSeat((28),isReserved:  snapshot.data.documents[docmentNumber]['seat28'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((29),isReserved:  snapshot.data.documents[docmentNumber]['seat29'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((30),isReserved:  snapshot.data.documents[docmentNumber]['seat30'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((31),isReserved:  snapshot.data.documents[docmentNumber]['seat31'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      SizedBox(
                        width: (MediaQuery
                            .of(context)
                            .size
                            .width / 12) * 2,
                      ),
                      CinemaSeat((32),isReserved:  snapshot.data.documents[docmentNumber]['seat32'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((33),isReserved:  snapshot.data.documents[docmentNumber]['seat33'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((34),isReserved:  snapshot.data.documents[docmentNumber]['seat34'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((35),isReserved:  snapshot.data.documents[docmentNumber]['seat35'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((36),isReserved:  snapshot.data.documents[docmentNumber]['seat36'],movieName: snapshot.data.documents[docmentNumber]['title']),
                    ],
                  ),
                  // 5TH Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CinemaSeat((37),isReserved:  snapshot.data.documents[docmentNumber]['seat37'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((38),isReserved:  snapshot.data.documents[docmentNumber]['seat38'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((39),isReserved:  snapshot.data.documents[docmentNumber]['seat39'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((40),isReserved:  snapshot.data.documents[docmentNumber]['seat40'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((41),isReserved:  snapshot.data.documents[docmentNumber]['seat41'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((42),isReserved:  snapshot.data.documents[docmentNumber]['seat42'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((43),isReserved:  snapshot.data.documents[docmentNumber]['seat43'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((44),isReserved:  snapshot.data.documents[docmentNumber]['seat44'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((45),isReserved:  snapshot.data.documents[docmentNumber]['seat45'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((46),isReserved:  snapshot.data.documents[docmentNumber]['seat46'],movieName: snapshot.data.documents[docmentNumber]['title']),
                      CinemaSeat((47),isReserved:  snapshot.data.documents[docmentNumber]['seat47'],movieName: snapshot.data.documents[docmentNumber]['title']),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          CinemaSeat(0),
                          CinemaSeat(0,isReserved: 1),
                          CinemaSeat(0,isSelected: true,),
                        ],
                      ),
                      Column(
                        //textDirection: TextDirection.rtl,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0, left: 20.0),
                            child: Text(
                              'Not Reserved', style: kDescriptionTextStyle,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 9.0),
                            child: Text(
                              'Reserved', style: kDescriptionTextStyle,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Your Seats', style: kDescriptionTextStyle,),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Price Per Seat = 25\$', style: kPriceTextStyle,),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      onPressed: () {
                        for(int i=1;i<=47;i++){
                          if( snapshot.data.documents[docmentNumber]['seat$i']==2){
                            final CollectionReference collectionReference = Firestore.instance.collection("movies");
                            collectionReference.document( snapshot.data.documents[docmentNumber]['title'].toString())
                                .updateData({"seat$i": 0})
                                .whenComplete(() async {
                              print("Completed");
                            }).catchError((e) => print(e));}
                        }
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SeatsScreen(title:snapshot.data.documents[4]['title'].toString(),)),
                        // );
                      },
                      color: kFontColor,
                      //minWidth: mediaQuery.width * 0.64,
                      height: mediaQuery.height * 0.06,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Reset!', style: kBottomButtonTextStyle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      onPressed: () {
                        for(int i=1;i<=47;i++){
                          if( snapshot.data.documents[docmentNumber]['seat$i']==2){
                            final CollectionReference collectionReference = Firestore.instance.collection("movies");
                            collectionReference.document( snapshot.data.documents[docmentNumber]['title'].toString())
                                .updateData({"seat$i": 1})
                                .whenComplete(() async {
                              print("Completed");
                            }).catchError((e) => print(e));}
                        }
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SeatsScreen(title:snapshot.data.documents[4]['title'].toString(),)),
                        // );
                      },
                      color: kFontColor,
                      //minWidth: mediaQuery.width * 0.64,
                      height: mediaQuery.height * 0.06,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Done!', style: kBottomButtonTextStyle),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
        });
  }
}


