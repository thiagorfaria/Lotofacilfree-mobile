import 'package:flutter/material.dart';
import 'commons.dart';

Row buildHeader() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildCards(buildText('LOTOFACIL FREE',
            fontWeight: FontWeight.bold, letterSpacing: 1.0)),
        buildCards(Icon(Icons.help_outline)),
      ],
    );
