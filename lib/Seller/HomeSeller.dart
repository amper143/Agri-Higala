import 'package:flutter/material.dart';

class HomeSeller extends StatefulWidget {
  @override
  _HomeSellerState createState() => _HomeSellerState();
}

class _HomeSellerState extends State<HomeSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Card(
                  elevation: 5,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                )),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                  child: Column(
                    children: [
                      Text('Orders',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'All',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Request',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Pending',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Delivering',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Refund',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                  child: Column(
                    children: [
                      Text('Available items',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'All',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Fruits',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Vegetables',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Meat',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Fish',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Discount',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Expiration Date',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                  child: Column(
                    children: [
                      Text('Total Earnings',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Total Daily',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Total Weekly',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Total Monthly',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                  child: Column(
                    children: [
                      Text('Transaction History',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'All',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Complete',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Returned',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Cancelled',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('0'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Reject',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
