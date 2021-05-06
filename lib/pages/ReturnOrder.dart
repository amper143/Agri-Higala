import 'package:flutter/material.dart';

class ReturnOrder extends StatefulWidget {
  @override
  _ReturnOrderState createState() => _ReturnOrderState();
}

class _ReturnOrderState extends State<ReturnOrder> {
  String valueChoose;
  List listItem = ['Defective', 'Wrong Order', 'Incomplete'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('Return Details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Card(
                    elevation: 1,
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          'Return',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                          width: 170,
                          height: 170,
                          child: Image.asset(
                            'assets/images/avocado.jpg',
                            fit: BoxFit.fill,
                          )),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Supplier: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Allan Bong')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Product: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Avocado')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Price: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('120.00')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Quantity: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('1')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Unit: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Kilo')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Shipping Fee: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('50.00')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Total : ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('150.00')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: DropdownButton(
                            underline: SizedBox(),
                            isExpanded: true,
                            dropdownColor: Colors.grey[200],
                            hint: Text('Select Reasons',
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.center),
                            value: valueChoose,
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: listItem.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList()),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      child: Column(
                        children: [
                          Text('Comment Section',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type Here...',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Builder(builder: (context) {
                return Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: double.infinity,
                  child: FlatButton(
                      color: Colors.green,
                      child:
                          Text('Submit', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        SnackBar mysnackbar = SnackBar(
                            content: Text('Your Comment has been Submitted'));
                        Scaffold.of(context).showSnackBar(mysnackbar);
                      }),
                );
              }),
            ],
          ),
        ));
  }
}
