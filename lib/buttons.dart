import 'package:flutter/material.dart';
import 'package:lotofacilfree/colors.dart';

import 'commons.dart';

Expanded buildButton(String text, Color color) =>
    Expanded(
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color,
            borderRadius: BorderRadius.circular(30.0)),
        child: FlatButton(
          onPressed: () {
            print('IMPAR');
          },
          textColor: Colors.white,
          child: buildText(text),
        ),
      ),
    );

Column buildButtons() =>
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildButton('8 Impares', odd()),
              SizedBox(
                width: 15.0,
              ),
              buildButton('9 Jogo anterior', lastGame()),
            ],
          ),
        ),
        buildHeightSpace(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildButton('3.3.3.3.3 Linha', rowGame()),
              SizedBox(
                width: 15.0,
              ),
              buildButton('3.4.1.5.2 Coluna', columnGame()),
            ],
          ),
        ),
        buildHeightSpace(),
        buttonSimulation()
      ],
    );

Container buttonSimulation() =>
    Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildButton('Simular', common()),
        ],
      ),
    );