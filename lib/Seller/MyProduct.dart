import 'package:flutter/material.dart';

class MyProduct extends StatefulWidget {
  @override
  _MyProductState createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('My Product'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Card(
              elevation: 5,
              child: Container(
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Product',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Card(
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: 150,
                      height: 170,
                      child: Image.asset(
                        'assets/images/avocado.jpg',
                        fit: BoxFit.fill,
                      )),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Stock Id: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('AV21')
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Unit Type: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Per Kilo')
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Price: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('120.00')
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Stock: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('50 Kg')
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Uploded date: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('11/20/20')
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Expiration Date: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('11/30/20')
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Product : ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Avocado')
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
