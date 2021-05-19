import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kPrimaryColor = Color(0xFFFFC61F);

const kDefaultPaddin = 20.0;

const iconSize  = 30.0;

final kHintTextStyle = TextStyle(
  //color: Colors.white54,
  color: Colors.black,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  //color: Colors.white,
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  //color: Color(0xFF6CA8F1),
  color: Color(0xFFE8E8E8),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);