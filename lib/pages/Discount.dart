import 'package:flutter/material.dart';

class DiscountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Discounts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                  elevation: 8,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Discounted Products',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/onion.jpg'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Product: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Onions'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Old price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                '150.00',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('New price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('130.00'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Location: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Canitoan'),
                            ],
                          ),
                          SizedBox(height: 5),
                          RaisedButton(
                            color: Colors.green,
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/kalabasa.jpg'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Product: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Kalabasa'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Old price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                '20.00',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('New price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('15.00'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Location: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Lumbia'),
                            ],
                          ),
                          SizedBox(height: 5),
                          RaisedButton(
                            color: Colors.green,
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/avocado.jpg'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Product: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Avocado'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Old price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                '80.00',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('New price: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('70.00'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Location: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Lapasan'),
                            ],
                          ),
                          SizedBox(height: 5),
                          RaisedButton(
                            color: Colors.green,
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
