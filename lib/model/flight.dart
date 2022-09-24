class Flight {
  final String departure;
  final String departureId;
  final String arrival;
  final String arrivalId;
  final String duration;
  final String date;
  final String departureTime;
  final int seatNumber;

  Flight._(this.departure, this.departureId, this.arrival, this.arrivalId, this.duration, this.date, this.departureTime, this.seatNumber);

  static builder(departure, departureId, arrival, arrivalId, duration, date, departureTime, seatNumber) {
    return Flight._(departure, departureId, arrival, arrivalId, duration, date, departureTime, seatNumber);
  }
}
