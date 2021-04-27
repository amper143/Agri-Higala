import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CartItem {
  final int stock, quantity;
  final String name, unitType, location, id, image, seller;
  final double price;

  CartItem(
      {@required this.id,
      @required this.location,
      @required this.seller,
      @required this.image,
      @required this.quantity,
      @required this.name,
      @required this.unitType,
      @required this.price,
      @required this.stock});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalamount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(String productId, double price, String name, String unitType,
      String location, int stock, String image, String seller) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingCartItem) => CartItem(
                image: existingCartItem.image,
                seller: existingCartItem.seller,
                id: existingCartItem.id,
                location: existingCartItem.location,
                name: existingCartItem.name,
                unitType: existingCartItem.unitType,
                price: existingCartItem.price,
                stock: existingCartItem.stock,
                quantity: existingCartItem.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              image: image,
              seller: seller,
              location: location,
              name: name,
              unitType: unitType,
              quantity: 1,
              price: price,
              stock: stock));
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
