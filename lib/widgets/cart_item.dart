import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/cart.dart';

class CartItem extends StatelessWidget {
  final int quantity;
  final String seller, location, name, image, id, productId;
  final double price;

  CartItem(this.id, this.price, this.seller, this.location, this.name,
      this.quantity, this.image, this.productId);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.all(10),
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 40,
          ),
          color: Theme.of(context).errorColor),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Container(
                child: Row(
              children: [
                Container(height: 150, width: 150, child: Image.asset(image)),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Items',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4)),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(4)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Supplier: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(seller),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Text('Location: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(location),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Text('SubTotal: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(price.toString()),
                        ]),
                      ],
                    ),
                  ],
                )
              ],
            ))),
      ),
    );
  }
}
