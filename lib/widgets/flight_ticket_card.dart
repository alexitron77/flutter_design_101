import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:thatshake/ui/full_circle.dart';
import 'package:thatshake/ui/thick_circle.dart';

import '../model/flight.dart';
import '../utils/styles.dart';

class FlightTicketCard extends StatelessWidget {
  final Flight flight;

  const FlightTicketCard({Key? key, required this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // List<Widget> dashWidget = List.generate(6, (index) => const Text("-",
    //       style: TextStyle(color: Colors.white),
    //   ));

    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width - 20,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
              decoration: BoxDecoration(
                color: Styles.bgPrimaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(flight.departureId.toUpperCase(),
                            style: Styles.whiteTextBold),
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: ThickCircle(),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // children: [...dashWidget],
                                ),
                              ),
                              const Center(
                                child: Icon(
                                  LineIcons.planeDeparture,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: ThickCircle(),
                        ),
                        Text(flight.arrivalId.toUpperCase(),
                            style: Styles.whiteTextBold),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(flight.departure, style: Styles.whiteText),
                      Text(flight.duration, style: Styles.whiteText),
                      Text(flight.arrival, style: Styles.whiteText),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.bgSecondaryColor,
              ),
              child: SizedBox(
                height: 20,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const FullCircle(topRight: 10, bottomRight: 10),
                    // ...dashWidget,
                    const FullCircle(topLeft: 10, bottomLeft: 10),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              decoration: BoxDecoration(
                color: Styles.bgSecondaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(flight.date, style: Styles.whiteText),
                      Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(flight.departureTime,
                              style: Styles.whiteText)),
                      Text(flight.seatNumber.toString(),
                          style: Styles.whiteText),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("date", style: Styles.whiteText),
                        Text("Time", style: Styles.whiteText),
                        Text("Seat", style: Styles.whiteText)
                      ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
