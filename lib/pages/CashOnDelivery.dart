import 'package:agri_higala/main.dart';
import 'package:agri_higala/pages/Confirmation.dart';
import 'package:flutter/material.dart';

class CashonDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text(' Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 8,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Payment: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          Text('Cash on Delivery'),
                        ],
                      )),
                )),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 8,
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
                        Text('John Doe'),
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
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Card(
                  elevation: 5,
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
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Product Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text('Quantity',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text('Price',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              height: 300,
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Avocado', style: TextStyle(fontSize: 15)),
                          Text('1 Kilo', style: TextStyle(fontSize: 15)),
                          Text('P 40.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Banana', style: TextStyle(fontSize: 15)),
                          Text('1 Kilo', style: TextStyle(fontSize: 15)),
                          Text('P 55.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pork rib', style: TextStyle(fontSize: 15)),
                          Text('1 Kilo', style: TextStyle(fontSize: 15)),
                          Text('P 150.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Total Amount: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'P 245.00',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 5),
                              Container(
                                width: 150,
                                child: FlatButton(
                                    color: Colors.green[400],
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Confirm',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () async {
                                      final action = Conformation.yesCancelDialog(
                                          context,
                                          'Confirm Order !',
                                          'Thank You!, your order has been process. please check your Order page');
                                    }),
                              ),
                              Container(
                                width: 150,
                                child: FlatButton(
                                    color: Colors.blue[400],
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Continue Shopping',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FirstScreen()));
                                    }),
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
