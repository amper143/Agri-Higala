import 'package:agri_higala/Providers/Order.dart';
import 'package:agri_higala/pages/Payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/cart.dart';
import '../Providers/Order.dart' show Orders;
import '../widgets/order_items.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text(' Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              elevation: 1,
              child: Container(
                height: 110,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Name: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Text('Stephen Curry'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Phone Number: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Text('09979558472'),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text('Address: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 10),
                            Text('Blk 22 Lot 7 Lumbia CDO'),
                          ],
                        ),
                        Spacer(),
                        IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  elevation: 1,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Order Summary',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  elevation: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Product Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text('Quantity',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text('Price',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            //ListView.builder(
            // itemCount: orderData.orders.length,
            // itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),),
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
                                                    Payment()));
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
      ),
    );
  }
}
