import 'package:flutter/material.dart';

class SellerNotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Notification'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          width: 2,
                          color: Colors.blue,
                        ),
                        //shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5)
                        ]),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/not1.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Darrly Wabe',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have a new Order ...',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          '05/28/21',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          width: 2,
                          color: Colors.blue,
                        ),
                        //shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5)
                        ]),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/not2.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Christine Malinap',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have a new Order ...',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          '05/28/21',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          width: 2,
                          color: Colors.blue,
                        ),
                        //shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5)
                        ]),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/not3.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alvin John Alvar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have a new Order ...',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          '05/28/21',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(
                          width: 2,
                          color: Colors.blue,
                        ),
                        //shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5)
                        ]),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/not4.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sharon Mae Bulanta',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have a new Order ...',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          '05/28/21',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
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
