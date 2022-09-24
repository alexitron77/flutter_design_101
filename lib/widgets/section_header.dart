import 'package:flutter/material.dart';

import '../utils/styles.dart';

class SectionHeader extends StatelessWidget {

  final String sectionHeaderTitle;
  const SectionHeader({Key? key, required this.sectionHeaderTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sectionHeaderTitle, style: Styles.title),
          InkWell(child: Text("View More", style: Styles.buttonText))
        ],
      ),
    );
  }
}
