import 'package:flutter/cupertino.dart';
import '../utils/styles.dart';

class HomepageHeader extends StatelessWidget {
  const HomepageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning", style: Styles.title),
            Text("Alexis", style: Styles.headTitle),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage("assets/plane.jpeg"),
            ),
          ),
        ),
      ],
    );
  }
}
