import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullCircle extends StatelessWidget {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  const FullCircle(
      {Key? key,
      this.topLeft = 0,
      this.bottomLeft = 0,
      this.topRight = 0,
      this.bottomRight = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight)),
      ),
    );
  }
}
