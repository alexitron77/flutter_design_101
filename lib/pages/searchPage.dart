import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:thatshake/widgets/search_bar.dart';

import '../utils/styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text("Where to go next?", style: Styles.headTitle),
          Center(
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Styles.bgColor,
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Center(child: Text("Airline Ticket")),
                  ),
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          const SearchBar(icon: LineIcons.planeDeparture),
          const SearchBar(icon: LineIcons.planeArrival),
        ],
      ),
    );
  }
}
