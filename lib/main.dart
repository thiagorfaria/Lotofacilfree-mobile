import 'package:flutter/material.dart';
import 'package:lotofacilfree/statistics.dart';

import 'buttons.dart';
import 'card_numbers.dart';
import 'commons.dart';
import 'header.dart';

void main() => runApp(LotofacilFree());

class LotofacilFree extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildHeader(),
                buildHeightSpace(),
                buildCardNumbers(),
                buildHeightSpace(),
                buildStatistics(),
                buildHeightSpace(),
                buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
