import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../utils/styles.dart';

class SearchBar extends StatelessWidget {
  final IconData icon;

  const SearchBar({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Styles.primaryColor),
          hintText: "Search for a flight",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Styles.primaryColor, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Styles.primaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
