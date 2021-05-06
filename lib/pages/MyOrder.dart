import 'package:agri_higala/pages/CancelOrder.dart';
import 'package:agri_higala/pages/OrderReceived.dart';
import 'package:agri_higala/pages/ReturnOrder.dart';
import 'package:agri_higala/pages/TrackOrder.dart';
import 'package:flutter/material.dart';
import '../pages/CancelOrder.dart';

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('My Order'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                  elevation: 1,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Orders Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                        width: 170,
                        height: 170,
                        child: Image.asset(
                          'assets/images/avocado.jpg',
                          fit: BoxFit.fill,
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Supplier: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Allan Bong')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Product: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Avocado')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('50.00')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Quantity: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('1')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Unit: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Kilo')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Shipping Fee: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('0')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Total : ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('50.00')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Cancel Order',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () async {
                                    final action = await Cancel.yesCancelDialog(
                                        context,
                                        'Cancel Order',
                                        'Are you sure you want to cancel ypur order?');
                                  }),
                            ),
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Return',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReturnOrder()));
                                  }),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('View Order Details',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TrackOrder()));
                                  }),
                            ),
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Order Received',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderReceive()));
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                        width: 170,
                        height: 170,
                        child: Image.asset(
                          'assets/images/banana.jpg',
                          fit: BoxFit.fill,
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Supplier: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('James Bond')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Product: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Banana')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('55.00')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Quantity: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('1')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Unit: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Kilo')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Shipping Fee: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('0.00')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Total : ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('55.00')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Cancel Order',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () async {
                                    final action = await Cancel.yesCancelDialog(
                                        context,
                                        'Cancel Order',
                                        'Are you sure you want to cancel ypur order?');
                                  }),
                            ),
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Return',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReturnOrder()));
                                  }),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('View Order Details',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TrackOrder()));
                                  }),
                            ),
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Order Received',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderReceive()));
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                        width: 170,
                        height: 170,
                        child: Image.asset(
                          'assets/images/rib.jpg',
                          fit: BoxFit.fill,
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Supplier: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Mike Jones')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Product: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Pork ribs')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('150.00')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Quantity: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('1')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Unit: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Kilo')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Shipping Fee: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('0.00')
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text('Total : ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('150.00')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Cancel Order',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () async {
                                    final action = await Cancel.yesCancelDialog(
                                        context,
                                        'Cancel Order',
                                        'Are you sure you want to cancel ypur order?');
                                  }),
                            ),
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Return',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReturnOrder()));
                                  }),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('View Order Details',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TrackOrder()));
                                  }),
                            ),
                            Container(
                              width: 150,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('Order Received',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderReceive()));
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
