import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class CinemaSeat extends StatefulWidget {
  int isReserved;
  bool isSelected;
  String movieName;
 int seat;
  CinemaSeat(this.seat,{this.isSelected = false, this.isReserved = 0,this.movieName});
  @override
  _CinemaSeatState createState() => _CinemaSeatState(this.seat);
}

class _CinemaSeatState extends State<CinemaSeat> {
  int seat;
  _CinemaSeatState(this.seat);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.isReserved==0 ? widget.isSelected = !widget.isSelected : null;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
        width: MediaQuery.of(context).size.width / 15,
        height: MediaQuery.of(context).size.width / 15,

    decoration: BoxDecoration(
          border: !widget.isSelected && widget.isReserved==0
      ? Border.all(color: kPinkColor, width: 1.0)
            : null,
        color: widget.isSelected  || widget.isReserved==2   ?
             kFontColor
            : widget.isReserved==1
            ? kPinkColor
            : null,
        borderRadius: BorderRadius.circular(5.0),

        ),
        child: saveSeat(seat),
      ),
    );
  }

  saveSeat(int s) {
    if(widget.isSelected == true){
      final CollectionReference collectionReference = Firestore.instance.collection("movies");
    collectionReference.document(widget.movieName)
        .updateData({"seat$s": 2})
        .whenComplete(() async {
      print("Completed");
    }).catchError((e) => print(e));}


  }
}
