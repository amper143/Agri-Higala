import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
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
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 8,
                child: Container(
                    height: 40,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Notification Update',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              )),
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
                      backgroundImage: AssetImage('assets/images/pick0.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monkey D. Luffy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '50 Kilo of Freash potato. Come ...',
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
                      backgroundImage: AssetImage('assets/images/pick1.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Keanu Reaves',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '50 Kilo of Freash potato. Come ...',
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
                      backgroundImage: AssetImage('assets/images/pick2.jpg'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monkey D. Luffy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '50 Kilo of Freash potato. Come ...',
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
