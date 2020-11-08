import 'package:flutter/material.dart';
import 'package:lotofacilfree/colors.dart';

import 'commons.dart';

Container buildCardNumbers() => buildCards(Column(children: buildRow()));

List<Row> buildRow() {
  List<Row> listRow = new List<Row>();
  listRow.add(Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: EdgeInsets.only(bottom: 30.0),
        child: buildText('Jogo número 123'),
      ),
    ],
  ));
  for (int row = 0; row < 5; row++) {
    List<Expanded> listColumn = new List<Expanded>();
    for (int column = (row * 5) + 1; column < (row * 5) + 6; column++) {
      listColumn.add(buildCircle(column.toString()));
    }

    listRow.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listColumn));
  }

  return listRow;
}

Expanded buildCircle(String number, {int type = 0}) => Expanded(
  child: Container(
    width: 50.0,
    height: 50.0,
    margin: EdgeInsets.all(1.0),
    child: Center(child: buildText(number)),
    decoration: BoxDecoration(
        shape: BoxShape.circle, color: selectColor(type: type)),
  ),
);

Color selectColor({int type = 0}) {
  if (type == 1) {
    return odd();
  } else if (type == 2) {
    return lastGame();
  } else if (type == 3) {
    return rowGame();
  } else if (type == 4) {
    return columnGame();
  } else {
    return empty();
  }
}
