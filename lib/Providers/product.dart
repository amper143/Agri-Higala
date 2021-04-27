import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String image, name, location, unitType, date, map, seller, sellerImage;
  final int id, stock;
  final double price;
  Product(
      {@required this.id,
      @required this.stock,
      @required this.sellerImage,
      @required this.seller,
      @required this.map,
      @required this.date,
      @required this.unitType,
      @required this.image,
      @required this.name,
      @required this.location,
      @required this.price});
}
