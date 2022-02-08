import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:atakan/Screens/Beslenme/beslenme_screen_2.dart';
import 'package:atakan/Screens/Beslenme/guidence-2.dart';
import 'package:atakan/Screens/Canl%C4%B1%20Yay%C4%B1n/canl%C4%B1_yay%C4%B1n_takvimi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AyarlarPage extends StatefulWidget {
  @override
  _AyarlarPage createState() => _AyarlarPage();
}

class _AyarlarPage extends State<AyarlarPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Premium-Background.png'),
                fit: BoxFit.fill
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left:25, bottom:0, right:0, top:65),
                child: Builder( builder:(context) => Container(
                    child: GestureDetector(
                      onTap: (){
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/menu.png'),
                              scale: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:340, bottom:0, right:0, top:65),
                child:Container(
                    child: GestureDetector(
                      onTap: ()=> showModalBottomSheet(
                        context: context,
                        builder: (context) => buildSheet2(),
                      ),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/notification.png'),
                              scale: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:125, bottom:0, right:0, top:3),
                child: Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                        scale: 1,
                        fit: BoxFit.fill
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:155, bottom:0, right:0, top:180),
                child: Text("AYARLAR", style: TextStyle(color: Colors.white, fontSize: 18.0),),
              ),
            ],
          ),
        ),
        bottomSheet: BottomSheetWidget(
        ),
      );
}

class BottomSheetWidget extends StatefulWidget{
  const BottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  double _currentValue=0;
  double _currentValue2=0;

  bool state=true;
  bool state2=true;
  bool state3=true;
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(0),
    height: 530,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      color: Colors.white,
    ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left:25,top:40),
                      child: Image(
                        image: AssetImage('assets/notb.png'),
                        height: 20,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20,top:40),
                      child: Text("Bildirim", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                    ),
                  ],
                ),
                Slider(
                  activeColor: Colors.deepOrange,
                    inactiveColor: Colors.grey.shade300,
                    value: _currentValue,
                    onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                    }
                    ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 120,
                  width: 900,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:25,top:20 ,bottom:0),
                            child: Image(
                              image: AssetImage('assets/ses.png'),
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20,top:20 ,bottom:0),
                            child: Text("Sesler", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                          ),
                        ],
                      ),
                      Slider(
                          activeColor: Colors.deepOrange,
                          inactiveColor: Colors.grey.shade300,
                          value: _currentValue2,
                          onChanged: (value) {
                            setState(() {
                              _currentValue2 = value;
                            });
                          }
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 60,
                  width: 900,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20,top:10 ,bottom:0),
                            child: Text("Yerel Video Modu", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 155,top:10 ,bottom:0),
                            child: Switch(
                              activeColor: Colors.deepOrange,
                              inactiveThumbColor: Colors.grey.shade300,
                              inactiveTrackColor: Colors.grey.shade300,
                              value: state,
                              onChanged: (bool s) {
                                setState(() {
                                  state = s;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 60,
                  width: 900,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20,top:10 ,bottom:0),
                            child: Text("Bulut Oynatıcı", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 180,top:10 ,bottom:0),
                            child: Switch(
                              activeColor: Colors.deepOrange,
                              inactiveThumbColor: Colors.grey.shade300,
                              inactiveTrackColor: Colors.grey.shade300,
                              value: state2,
                              onChanged: (bool s) {
                                setState(() {
                                  state2 = s;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 60,
                  width: 900,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20,top:10 ,bottom:0),
                            child: Text("WEB Oynatıcı (CANLI)", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 125,top:10 ,bottom:0),
                            child: Switch(
                              activeColor: Colors.deepOrange,
                              inactiveThumbColor: Colors.grey.shade300,
                              inactiveTrackColor: Colors.grey.shade300,
                              value: state3,
                              onChanged: (bool s) {
                                setState(() {
                                  state3 = s;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 60,
                  width: 900,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20,top:20 ,bottom:0),
                            child: Text("Şifre Değiştirme", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]
          ),
        ]
    ),
  );
}