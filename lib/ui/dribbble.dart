import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:line_icons/line_icons.dart';

class DribbbleApp extends StatefulWidget {
  @override
  _DribbbleAppState createState() => _DribbbleAppState();
}

class _DribbbleAppState extends State<DribbbleApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  color: Color.fromRGBO(106, 45, 87, 1),
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0))),
              height: MediaQuery.of(context).size.height * 0.30,
              child: new Container(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Row /*or Column*/ (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white,
                              ),
                              Icon(Icons.format_align_right,
                                  size: 30, color: Colors.white),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0)),
                        Row /*or Column*/ (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text("Mary Jane",
                                    style: new TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30.0,
                                        color: Colors.white)),
                                new Text("Vetenerian, GCSE degree",
                                    textDirection: TextDirection.ltr,
                                    style: new TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ],
                            ),
                            new Container(
                              child: CircleAvatar(
                                backgroundImage:
                                    ExactAssetImage('assets/img/profile.jpg'),
                                minRadius: 20,
                                maxRadius: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //Second Session
            new Container(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Health
                      new Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * .40,
                        // color: Colors.black,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 6.0),
                                    child: new Text("Health",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22.0,
                                            color: Colors.black)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 60.0),
                                    child: new Text("89%",
                                        textDirection: TextDirection.rtl,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20.0,
                                            color: Colors.black38)),
                                  ),
                                ],
                              ),
                            ),

                            //Health Percentile
                            new LinearPercentIndicator(
                              animation: true,
                              lineHeight: 5.0,
                              animationDuration: 2000,
                              percent: 0.89,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.yellow.shade800,
                            ),
                          ],
                        ),
                      ),

                      //Activity
                      new Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * .40,
                        // color: Colors.black,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 6.0),
                                    child: new Text("Activity",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22.0,
                                            color: Colors.black)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 60.0),
                                    child: new Text("70%",
                                        textDirection: TextDirection.rtl,
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20.0,
                                            color: Colors.black38)),
                                  ),
                                ],
                              ),
                            ),

                            //Health Percentile
                            new LinearPercentIndicator(
                              animation: true,
                              lineHeight: 5.0,
                              animationDuration: 2000,
                              percent: 0.7,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.blue.shade600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: new Text("Last appointment",
                        style: new TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                            color: Colors.black)),
                  ),

                  //Start of Blue
                  new Container(
                      // height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: new BorderRadius.only(
                              topRight: const Radius.circular(10.0),
                              topLeft: const Radius.circular(10.0),
                              bottomLeft: const Radius.circular(10.0),
                              bottomRight: const Radius.circular(10.0))),
                      child: IntrinsicHeight(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 110.0,
                                width: MediaQuery.of(context).size.width * .20,
                                decoration: new BoxDecoration(
                                    color: Colors.blue.shade500,
                                    borderRadius: new BorderRadius.only(
                                        topRight: const Radius.circular(10.0),
                                        topLeft: const Radius.circular(10.0),
                                        bottomLeft: const Radius.circular(10.0),
                                        bottomRight:
                                            const Radius.circular(10.0))),
                                child: Icon(
                                  LineIcons.bus,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 20.0),
                              // height: 200,
                              width: MediaQuery.of(context).size.width * .6575,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 15, 30, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text("Injections",
                                            style: new TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 22.0,
                                                color: Colors.black)),
                                        new Text("21.08.2019",
                                            style: new TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15.0,
                                                color: Colors.black38)),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding:
                                          EdgeInsets.fromLTRB(0, 20, 0, 20),
                                      child: Text(
                                          "Routine vaccinations are given.\nThere are no complications.",
                                          textAlign: TextAlign.left,
                                          textDirection: TextDirection.ltr,
                                          style: new TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18,
                                          ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),

                  //Start of Orange
                  new Container(
                    margin: EdgeInsets.only(top: 20),
                    // height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(254, 92, 25, .1),
                        borderRadius: new BorderRadius.only(
                            topRight: const Radius.circular(10.0),
                            topLeft: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width * .20,
                            decoration: new BoxDecoration(
                                color: Color.fromRGBO(254, 92, 25, 11),
                                borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(10.0),
                                    topLeft: const Radius.circular(10.0),
                                    bottomLeft: const Radius.circular(10.0),
                                    bottomRight: const Radius.circular(10.0))),
                            child: Icon(LineIcons.ambulance,
                                size: 50, color: Colors.white),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(left: 20.0),
                          // height: 200,
                          width: MediaQuery.of(context).size.width * .6575,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 15, 30, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text("Control visit",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22.0,
                                            color: Colors.black)),
                                    new Text("21.08.2019",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            color: Colors.black38)),
                                  ],
                                ),
                              ),
                              new Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                      "During routine of examination,\nno diseases were detected. ",
                                      style: new TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                      ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  new Container(
                      padding: EdgeInsets.only(top: 30),
                      child: FlatButton(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          color: Color.fromRGBO(255, 181, 62, 1),
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(100, 30, 100, 30),
                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            /*...*/
                          },
                          child: new Center(
                            child: Text(
                              "Setup an appointment",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          )))
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.gamepad,
                  size: 40,
                  color: Color.fromRGBO(106, 45, 87, 1),
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.gear,
                  size: 40,
                  color: Color.fromRGBO(106, 45, 87, 1),
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.cloud,
                  size: 40,
                  color: Color.fromRGBO(106, 45, 87, 1),
                ),
                title: Text("")),
                
            BottomNavigationBarItem(
                icon: new Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: 10),
                   decoration: new BoxDecoration(
                        color: Color.fromRGBO(106, 45, 87, 1),
                        borderRadius: new BorderRadius.only(
                            topRight: const Radius.circular(50.0),
                            topLeft: const Radius.circular(50.0),
                            bottomLeft: const Radius.circular(50.0),
                            bottomRight: const Radius.circular(50.0))),
                  child: Row(
                  children: <Widget>[
                    Icon(
                  LineIcons.safari,
                  size: 40,
                  color: Colors.white,
                ),
                new Text("  Data", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                ),)
                  ],
                ),
                ),
                title: Text("")),
          ],
        ));
  }
}
