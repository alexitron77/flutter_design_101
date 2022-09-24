import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../model/flight.dart';
import '../model/hotel.dart';
import '../widgets/carousel.dart';
import '../widgets/flight_ticket_card.dart';
import '../widgets/homepage_header.dart';
import '../widgets/hotel_card.dart';
import '../widgets/search_bar.dart';
import '../widgets/section_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Flight> flights = [
      Flight.builder(
          "Paris", "PAS", "Nice", "NCE", "1h10", "23 Aug", "08:30AM", 23),
      Flight.builder(
          "Nice", "NCE", "Rome", "RME", "1h30", "01 Sep", "11:30PM", 90)
    ];

    List<Hotel> hotels = [
      Hotel.builder("London", "UK", 300,
          "https://media.cntraveler.com/photos/61e08b00abc79c35233fa50b/master/w_2045,h_1363,c_limit/Bedroom-ArtHotel-DenverCO-CRHotel.jpeg"),
      Hotel.builder("JB", "Malaysia", 400,
          "https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg"),
    ];

    List<FlightTicketCard> flightTicketWidgets = flights
        .map<FlightTicketCard>((flight) => FlightTicketCard(flight: flight))
        .toList();

    List<HotelCard> hotelWidgets =
        hotels.map<HotelCard>((hotel) => HotelCard(hotel: hotel)).toList();

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const HomepageHeader(),
        const SearchBar(icon: LineIcons.search),
        const SectionHeader(sectionHeaderTitle: "Upcoming Flights"),
        Carousel(cards: flightTicketWidgets),
        const SectionHeader(sectionHeaderTitle: "Hotels"),
        Carousel(cards: hotelWidgets),
      ],
    );
  }
}
