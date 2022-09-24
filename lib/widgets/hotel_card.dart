import 'package:flutter/material.dart';

import '../model/hotel.dart';
import '../utils/styles.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;
  const HotelCard({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.bgPrimaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
    ),
      margin: EdgeInsets.only(right: 30),
      height: 200,
      width: 230,
      child: Column(
        children: [
          SizedBox(
                height: 130,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(hotel.imgUrl, height: 130, width: 130,)
                ),
          ),
          Text(hotel.city, style: Styles.whiteTextBold),
          Text(hotel.country, style: Styles.whiteTextBold),
          Text("${hotel.price}\$ / night".toString(), style: Styles.whiteTextBold),
        ]
      ),
    );
  }
}
