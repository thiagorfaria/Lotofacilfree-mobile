import 'package:flutter/material.dart';

import 'commons.dart';

Container buildStatistics() => buildCards(Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          buildText('Probabilidade de '),
          buildTextNumber('39%', Colors.black, fontWeight: FontWeight.bold),
        ]),
      ],
    ));

Text buildTextNumber(String text, Color color,
        {fontWeight = FontWeight.normal, letterSpacing = 0.0}) =>
    Text(
      text,
      style: TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: 17.0,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing),
    );
