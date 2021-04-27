import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('About Us'),
      ),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/ban.jpg')),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 230,
                  padding: EdgeInsets.all(15),
                  child: Card(
                    elevation: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 15),
                            alignment: Alignment.topCenter,
                            child: Text('What we are',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                              'We the City Agriculture Department as an agency responsible for the promotion of agricultural developmentby providing Framework public investment an to support local farmers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Card(
                    elevation: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 15),
                            alignment: Alignment.topCenter,
                            child: Text('Our Mission',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                              'To Help and empowered the farming and fishing communities and the private sector to produce enough accessible and affordable food for every Filipino and a decent income for all',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 230,
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Card(
                    elevation: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 15),
                            alignment: Alignment.topCenter,
                            child: Text('Our Vision',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25))),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                              'The Departments vision is a competative, sustainable and Technology-based agriculture and fishery sector driven by the productive and progressive farmers and fishfolk ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
