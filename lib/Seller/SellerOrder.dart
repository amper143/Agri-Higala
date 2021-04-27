import 'package:agri_higala/Seller/OrderDetails.dart';
import 'package:flutter/material.dart';

class SellerOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('My Order'),
      ),
      body: Container(
        height: 150,
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        width: double.infinity,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(OrderDetails.routeName);
          },
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text('Order Id: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('AV01'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Customer: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Stephen Curry'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Total: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('50.00'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Address: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Calaanan Canitoan'),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Status',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      FlatButton(
                          color: Colors.green,
                          child: Text(
                            'Accept',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {}),
                      FlatButton(
                          color: Colors.red,
                          child: Text(
                            'Decline',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {}),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
