import 'package:flutter/material.dart';

Container buildCards(Widget child) => Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0)),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: child,
      ),
    );

Text buildText(String text,
        {fontWeight = FontWeight.normal, letterSpacing = 0.0}) =>
    Text(
      text,
      style: TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: 15.0,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );

SizedBox buildHeightSpace() => SizedBox(height: 15.0);
SizedBox buildWidthSpace() => SizedBox(width: 5.0);
