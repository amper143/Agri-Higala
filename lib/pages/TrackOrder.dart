import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Order Transaction'),
      ),
      body: Stepper(
        steps: _mySteps(),
        currentStep: this._currentStep,
        onStepTapped: (step) {
          setState(() {
            this._currentStep = step;
          });
        },
        onStepContinue: () {
          setState(() {
            if (this._currentStep < this._mySteps().length - 1) {
              this._currentStep = this._currentStep + 1;
            } else {
              print('Completed');
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (this._currentStep > 0) {
              this._currentStep = this._currentStep - 1;
            } else {
              this._currentStep = 0;
            }
          });
        },
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title: Text('Request'),
        subtitle: Row(children: [
          Text('4/30/21', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('3:00 pm', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('Order : 2011348', style: TextStyle(fontWeight: FontWeight.bold))
        ]),
        content: TextField(),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text('Pending'),
        subtitle: Row(children: [
          Text('4/30/21', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('3:10 pm', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('Order : 2011348',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ]),
        content: TextField(),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text('Delivery'),
        subtitle: Row(children: [
          Text('4/30/21', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('3:20 pm', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('Order : 2011348',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ]),
        content: TextField(),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text('Order Completed'),
        subtitle: Row(children: [
          Text('4/30/21', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('3:40 pm', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 20),
          Text('Order : 2011348',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ]),
        content: TextField(),
        isActive: _currentStep >= 3,
      ),
    ];
    return _steps;
  }
}
