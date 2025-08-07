import 'package:flutter/cupertino.dart';

class HBox extends SizedBox {
  final double height;
  const HBox(this.height, {super.key}) : super(height: height);
}

class WBox extends SizedBox {
  final double width;
  const WBox(this.width, {super.key}) : super(width: width);
}
