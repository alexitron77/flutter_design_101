import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../utils/styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon:
          Icon(LineIcons.search, color: Styles.primaryColor),
          hintText: "Search for a flight",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
            BorderSide(color: Styles.primaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
