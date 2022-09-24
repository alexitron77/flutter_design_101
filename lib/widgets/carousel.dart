import 'package:flutter/cupertino.dart';

class Carousel<T> extends StatelessWidget {
  final List<T> cards;
  const Carousel({Key? key, required this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[...cards.cast()],
      ),
    );
  }
}
