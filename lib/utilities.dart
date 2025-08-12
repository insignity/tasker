import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import 'di.dart';

class HBox extends SizedBox {
  final double height;

  const HBox(this.height, {super.key}) : super(height: height);
}

class WBox extends SizedBox {
  final double width;

  const WBox(this.width, {super.key}) : super(width: width);
}

///Typedefs
typedef Json = Map<String, dynamic>;

///Global variables
Logger l = Logger(level: Level.all, printer: SimplePrinter(colors: false));
