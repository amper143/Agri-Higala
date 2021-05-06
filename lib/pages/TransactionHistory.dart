import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('Transaction History'),
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(
                child: Text('ALL',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))),
            Tab(
                child: Text('CANCEL',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))),
            Tab(
                child: Text('RETURN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))),
            Tab(
                child: Text('SUCCESS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))),
          ]),
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Date',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('Order Id',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('Supplier',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('Status',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('11/15/20', style: TextStyle(fontSize: 15)),
                          Text('CA1', style: TextStyle(fontSize: 15)),
                          Text('Allan Bang', style: TextStyle(fontSize: 15)),
                          Text('PENDING', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('11/12/20', style: TextStyle(fontSize: 15)),
                          Text('CA12', style: TextStyle(fontSize: 15)),
                          Text('DANIEL HARRY', style: TextStyle(fontSize: 15)),
                          Text('CANCEL', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('11/19/20', style: TextStyle(fontSize: 15)),
                          Text('CA11', style: TextStyle(fontSize: 15)),
                          Text('STEP CURRY', style: TextStyle(fontSize: 15)),
                          Text('RETURN', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('11/18/20', style: TextStyle(fontSize: 15)),
                          Text('CA18', style: TextStyle(fontSize: 15)),
                          Text('LEBRON JAMES', style: TextStyle(fontSize: 15)),
                          Text('SUCCESS', style: TextStyle(fontSize: 15)),
                        ],
                      ),
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
