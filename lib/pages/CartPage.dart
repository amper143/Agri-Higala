import 'package:agri_higala/pages/CheckoutPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/cart.dart' show Cart;
import '../widgets/cart_item.dart';
import '../pages/CheckoutPage.dart';
import '../Providers/Order.dart';

class CartPage extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text(' Your Cart'),
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                elevation: 1,
                child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Cart Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              )),
          Expanded(
              child: ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (ctx, i) => CartItem(
              cart.items.values.toList()[i].id,
              cart.items.values.toList()[i].price,
              cart.items.values.toList()[i].seller,
              cart.items.values.toList()[i].location,
              cart.items.values.toList()[i].name,
              cart.items.values.toList()[i].quantity,
              cart.items.values.toList()[i].image,
              cart.items.keys.toList()[i],
            ),
          )),
          Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Card(
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Total Amount: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              cart.totalamount.toString() + '0',
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            Row(
                              children: [
                                FlatButton(
                                    color: Colors.green[400],
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Check Out'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CheckOutPage()));
                                      Provider.of<Orders>(context,
                                              listen: false)
                                          .addOrder(
                                        cart.items.values.toList(),
                                        cart.totalamount,
                                      );
                                      cart.clear();
                                    }),
                                SizedBox(width: 5),
                                FlatButton(
                                    color: Colors.green[400],
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Continue'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CheckOutPage()));
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
