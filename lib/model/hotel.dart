class Hotel {
  final String city;
  final String country;
  final int price;
  final String imgUrl;

  Hotel._(this.city, this.country, this.price, this.imgUrl);

  static builder(String city, String country, int price, String imgUrl) {
    return Hotel._(city, country, price, imgUrl);
  }
}
