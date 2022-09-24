import 'package:flutter/material.dart';

class ThickCircle extends StatelessWidget {
  const ThickCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2, color: Colors.white)
      ),
    );
  }
}
