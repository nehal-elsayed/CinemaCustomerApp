import 'package:flutter/material.dart';

const kBackGroundColor =  Color(0xFF1a2430);

const kFontColor =  Color(0xFFfff6f6);
const kPinkColor =  Color(0xFFeea1a1) ;

const kTitleStyle = TextStyle(
  fontSize:50.00,
  fontWeight: FontWeight.bold,
  color : Color(0xFFfff6f6),
);

const kMovieTitleStyle = TextStyle(
  fontSize:30.00,
  fontWeight: FontWeight.bold,
  color : Color(0xFFfff6f6),
);

const kSeatsTitleStyle = TextStyle(
  fontSize:25.00,
  fontWeight: FontWeight.bold,
  color : Color(0xFFfff6f6),
);


const kDescriptionTextStyle = TextStyle(
  fontSize:18.00,
  //fontWeight: FontWeight.bold,
  fontWeight: FontWeight.w500,
  color : Color(0xFFfff6f6),
);

const kPriceTextStyle = TextStyle(
  fontSize:20.00,
  //fontWeight: FontWeight.bold,
  fontWeight: FontWeight.w500,
  color : Color(0xFFfff6f6),
);

const kButtonTextStyle = TextStyle(
  fontSize:20.00,
  fontWeight: FontWeight.bold,
  color : Color(0xFFfff6f6),
);

const kBottomButtonTextStyle = TextStyle(
  fontSize:25.00,
  fontWeight: FontWeight.bold,
  color :Color(0xFFeea1a1),
  //color : Color(0xFFcb814f),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter A Value',hintStyle: TextStyle(color: Color(0xFFfff6f6),fontSize: 20.00,),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFeea1a1), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFeea1a1), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

// const kTextFieldDecoration =InputDecoration(
//
//   hintText: 'Enter A Value',
//   contentPadding:
//   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
//   enabledBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
//     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//   ),
// );