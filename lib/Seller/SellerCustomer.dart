import 'package:agri_higala/Seller/SellerDrawMenu.dart';
import 'package:flutter/material.dart';

const String _yourName = "John Doe";

class SellerCustomer extends StatefulWidget {
  SellerCustomer({Key key}) : super(key: key);

  @override
  _SellerCustomerState createState() => _SellerCustomerState();
}

class _SellerCustomerState extends State<SellerCustomer>
    with TickerProviderStateMixin {
  final TextEditingController _txtControllerMessage =
      new TextEditingController();
  final List<ChatMessage> _listMessage = new List<ChatMessage>();

  @override
  void dispose() {
    for (ChatMessage message in _listMessage)
      message.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green[400],
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerDrawMenu()));
              }),
          title: Text("Customer Service"),
          centerTitle: true,
        ),
        body: new Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                  elevation: 1,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Technical Support',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                )),
            Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/customSer.png'),
            ),
            new Flexible(
              child: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _listMessage[index],
                itemCount: _listMessage.length,
              ),
            ),
            new Divider(
              height: 10.0,
            ),
            new Container(
              decoration: new BoxDecoration(color: Theme.of(context).cardColor),
              child: _buildCompotionInput(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompotionInput() {
    return new Container(
      margin: EdgeInsets.fromLTRB(15, 0, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: _txtControllerMessage,
              onSubmitted: _onSubmitMessage,
              decoration: new InputDecoration.collapsed(hintText: "message..."),
            ),
          ),
          new Container(
            child: new IconButton(
                icon: Icon(Icons.send, color: Colors.blue[700]),
                onPressed: _sendMessage),
          )
        ],
      ),
    );
  }

  void _sendMessage() {
    print(_txtControllerMessage.text);

    ChatMessage message = new ChatMessage(
      message: _txtControllerMessage.text,
      animationController: new AnimationController(
        duration: new Duration(milliseconds: 700),
        vsync: this,
      ),
    );
    setState(() {
      if (_txtControllerMessage.text.length > 0) {
        _listMessage.insert(0, message);
      }
    });
    // Hide keyboard after send message
    // FocusScope.of(context).requestFocus(FocusNode());
    _txtControllerMessage.clear();
    message.animationController.forward();
  }

  void _onSubmitMessage(String text) {
    print("message: $text");
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key key, this.message, this.animationController})
      : super(key: key);

  final String message;
  final AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(7.0),
              child: new CircleAvatar(
                child: new Text(_yourName[0]),
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    _yourName,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  new Container(
                    child: new Text(message),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
