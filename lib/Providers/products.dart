import 'package:flutter/foundation.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        seller: 'Mark Acido',
        id: 1,
        name: 'Avocado',
        price: 40.00,
        location: 'Lumbia',
        stock: 50,
        unitType: 'per Kilo',
        image: 'assets/images/avocado.jpg',
        date: '10/25/21',
        sellerImage:
            'https://yt3.ggpht.com/ytc/AAUvwnjklM-7VXFi3S0r6JgYWRhi9kmiJL5ec_naafGK=s900-c-k-c0x00ffffff-no-rj',
        map:
            'https://i.nona.net/locmap_LUMBIA_124.4258889X8.2758333X124.7618889X8.5158333.png'),
    Product(
        seller: 'James Bond',
        id: 2,
        name: 'Banana',
        price: 55.00,
        location: 'Calaanan',
        stock: 50,
        unitType: 'per Kilo',
        image: 'assets/images/banana.jpg',
        date: '10/20/21',
        sellerImage:
            'https://static3.cbrimages.com/wordpress/wp-content/uploads/2020/03/Featured-Image-Luffy.jpg',
        map:
            'https://i2.wp.com/www.cdodev.com/wp-content/uploads/2020/08/cmp.jpg?resize=640%2C358'),
    Product(
        seller: 'Stephen Jones',
        id: 3,
        name: 'Pork Ribs',
        price: 150.00,
        location: 'Carmen',
        stock: 50,
        unitType: 'per Kilo',
        image: 'assets/images/pork.jpg',
        date: '9/28/21',
        sellerImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWva_M-mhVApOJ-zLS7GyKm4mhOKfrjmnWZQ&usqp=CAU',
        map: 'https://www.sunstar.com.ph/uploads/images/2020/06/04/230034.jpg'),
    Product(
        seller: 'Stephen Curry',
        id: 4,
        name: 'Chicken',
        price: 180.00,
        location: 'Barra, Opol',
        stock: 50,
        unitType: 'per Kilo',
        image: 'assets/images/chicken.jpg',
        date: '10/14/21',
        sellerImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8PFuDOKSUmaUHlmJ_cHdR5nYhbrPsL7nP6w&usqp=CAU',
        map:
            'https://d8x8c9m6.stackpathcdn.com/wp-content/uploads/2018/03/map-5.png'),
    Product(
        seller: 'Jonny Bravo',
        id: 5,
        name: 'Kalabasa',
        price: 10.00,
        location: 'Kauswagan',
        stock: 50,
        unitType: 'per Kilo',
        image: 'assets/images/kalabasa.jpg',
        date: '10/12/21',
        sellerImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkhwF_XJs9nV_Iv7wwk2QwBEuv-yJiQtrsZg&usqp=CAU',
        map:
            'https://static-ph.lamudi.com/static/media/cXVhbGl0eS82NQ%3D%3D/2x2x5x881x390/9ec4b848247ecc.jpg'),
    Product(
        seller: 'Allan Bang',
        id: 6,
        name: 'Onion',
        price: 120.00,
        location: 'Bulua',
        stock: 50,
        unitType: 'per Kilo',
        image: 'assets/images/onion.jpg',
        date: '10/10/21',
        sellerImage:
            'https://external-preview.redd.it/_YPBxT6PvguQ6TQS52OI2kfmJVF1edwnCFfuQY4RaOE.jpg?auto=webp&s=d5156f0ce7fc9c2aa70d1a656f256d6c7091f42d',
        map:
            'https://www.trulywealthyrealty.com/wp-content/uploads/2013/11/Bulua-Lot-3409sqm-Cagayan-de-Oro.jpg'),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(int id) {
    return _items.firstWhere((prud) => prud.id == id);
  }

  void addProduct() {
    // _items.add();
    notifyListeners();
  }
}
