import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  static const routeName = '/OrderDetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Order Details'),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Order Id: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('20178'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Buyer name: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Real G'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
