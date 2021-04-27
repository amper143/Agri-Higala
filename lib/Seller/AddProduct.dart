import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String valueChoose;
  String type;
  List category = ['Fish', 'Meat', 'Fruits', 'Vegetables'];
  List unitType = ['Per Kilo', 'Per Bundle'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              elevation: 5,
              child: Container(
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Products Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Product name',
                            ))),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Price',
                            ))),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'SRP',
                            ))),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Stock',
                            ))),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Barangay',
                            ))),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 2.5,
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Expiration Date',
                            ))),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              padding: EdgeInsets.only(left: 15),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  dropdownColor: Colors.grey[200],
                                  hint: Text('Category',
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center),
                                  value: type,
                                  onChanged: (newValue) {
                                    setState(() {
                                      type = newValue;
                                    });
                                  },
                                  items: category.map((valueItem) {
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
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              padding: EdgeInsets.only(left: 15),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  dropdownColor: Colors.grey[200],
                                  hint: Text('Unit Type',
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center),
                                  value: valueChoose,
                                  onChanged: (newValue) {
                                    setState(() {
                                      valueChoose = newValue;
                                    });
                                  },
                                  items: unitType.map((valueItem) {
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
                    FractionallySizedBox(
                      widthFactor: .9,
                      child: RaisedButton.icon(
                          color: Colors.green,
                          onPressed: () {},
                          icon: Icon(Icons.camera),
                          label: Text('Upload Photo')),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.height / 1,
                        child: TextFormField(
                            maxLines: null,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Product Description',
                            ))),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: double.infinity,
                      child: FlatButton(
                          color: Colors.green,
                          child: Text('Published',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
