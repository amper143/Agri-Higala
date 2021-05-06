import 'package:agri_higala/models/message_model.dart';
import 'package:flutter/material.dart';

class SellerInbox extends StatefulWidget {
  @override
  _SellerInboxState createState() => _SellerInboxState();
}

class _SellerInboxState extends State<SellerInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 8,
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('Seller Inbox'),
          actions: [
            IconButton(
              iconSize: 30,
              color: Colors.white,
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          border: Border.all(
                            width: 2,
                            color: Colors.green,
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
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    chat.sender.name,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  chat.sender.isOnline
                                      ? Container(
                                          margin: EdgeInsets.only(left: 5),
                                          width: 7,
                                          height: 7,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.greenAccent),
                                        )
                                      : Container(
                                          child: null,
                                        )
                                ],
                              ),
                              Text(
                                chat.time,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                              child: Text(
                            chat.text,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 13,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
