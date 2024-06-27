import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const colorList = <Color>[Colors.blue, Colors.red, Colors.purple, Colors.green];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0, 'Selecciona un color mayor o igual a 0'),
        assert(selectedColor < colorList.length,
            'El color seleccionado debe ser menor a ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
