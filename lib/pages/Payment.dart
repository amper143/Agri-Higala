import 'package:agri_higala/pages/CashOnDelivery.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text(' Payment'),
      ),
      body: Column(
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
                      'Payment Method',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Card(
              elevation: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                      color: Colors.blue,
                      child: Text('Cash on Delivery',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CashonDelivery()));
                      }),
                  Container(
                    width: 150,
                    child: FlatButton(
                        color: Colors.blue,
                        child: Text('G-Cash',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Card(
              elevation: 1,
              child: Row(
                children: [
                  Container(
                      height: 120,
                      child: Image.asset('assets/images/gcash.jpg')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pay with your G-cash account'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Make sure you have enough \n in your account'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'You will be redirected to G-cash \n app to complete your payment'),
                    ],
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
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Text('Total Amount'),
                              Spacer(),
                              Text('P 245.00'),
                            ],
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: .9,
                          child: FlatButton(
                            color: Colors.green,
                            child: Text(
                              'Pay Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )),
              )),
        ],
      ),
    );
  }
}
