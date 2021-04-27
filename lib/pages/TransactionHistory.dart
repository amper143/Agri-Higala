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
              Tab(child: Text('ALL')),
              Tab(child: Text('CANCEL')),
              Tab(child: Text('RETURN')),
              Tab(child: Text('SUCCESS')),
            ]),
          ),
          body: ListView(children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('11/15/20'),
                  Text('CA1'),
                  Text('Allan Bang'),
                  Text('PENDING'),
                ],
              ),
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('11/12/20'),
                  Text('CA12'),
                  Text('DANIEL HARRY'),
                  Text('CANCEL'),
                ],
              ),
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('11/19/20'),
                  Text('CA11'),
                  Text('STEP CURRY'),
                  Text('RETURN'),
                ],
              ),
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('11/18/20'),
                  Text('CA18'),
                  Text('LEBRON JAMES'),
                  Text('SUCCESS'),
                ],
              ),
            ),
          ])),
    );
  }
}
