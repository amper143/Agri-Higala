import 'package:flutter/material.dart';

class SellerEarn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Earnings'),
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
                      child: Text('Return Summary',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))),
                )),
            Container(
              height: 40,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Order Id',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('Customer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('Date',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('Earnings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
              ),
            ),
            Container(
              height: 450,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('AV10', style: TextStyle(fontSize: 15)),
                          Text('John Wick', style: TextStyle(fontSize: 15)),
                          Text('04/27/21', style: TextStyle(fontSize: 15)),
                          Text('500.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('BA11', style: TextStyle(fontSize: 15)),
                          Text('Ma.Serina', style: TextStyle(fontSize: 15)),
                          Text('04/26/21', style: TextStyle(fontSize: 15)),
                          Text('100.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('CA10', style: TextStyle(fontSize: 15)),
                          Text('Mike Sanchez', style: TextStyle(fontSize: 15)),
                          Text('04/25/21', style: TextStyle(fontSize: 15)),
                          Text('300.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('CA12', style: TextStyle(fontSize: 15)),
                          Text('Carl Lee', style: TextStyle(fontSize: 15)),
                          Text('04/25/21', style: TextStyle(fontSize: 15)),
                          Text('150.00', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Total Earnings',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Text('P 1,050',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
