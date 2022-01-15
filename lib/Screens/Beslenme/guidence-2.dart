import 'package:atakan/Screens/Antrenman/antrenman.dart';
import 'package:atakan/Screens/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class GuidencePage2 extends StatefulWidget {
  @override
  _GuidencePage2 createState() => _GuidencePage2();
}

class _GuidencePage2 extends State<GuidencePage2> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.deepOrange,
                  Colors.orange,
                ],
              ),
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            child: Column(
                children: [
                  Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:5, bottom:30, right:0, top:70),
                          child: Builder( builder:(context) => Container(
                            child: IconButton(
                              onPressed: (){
                                Get.to(HomePage());
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color:Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:0, bottom:30, right:0, top:70),
                          child: Text("BESLENME UZMANINA DANIŞ", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                        ),
                      ]
                  ),
                  Container(
                    margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                          padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.blueGrey[50]!,
                                Colors.blueGrey[50]!,
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:20, bottom:15, right:0, top:20),
                                child: Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.blueGrey[50]!,
                                        Colors.blueGrey[50]!,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/Tuğçe.png'),
                                        scale: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:0, bottom:3, right:0, top:0),
                                    child: Text("Tuğçe YILMAZ", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                                    child: Text("Beslenme Uzmanı", style: TextStyle(color: Colors.grey, fontSize: 15.0),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:90, bottom:0, right:0, top:0),
                                child:  Container(
                                    margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                    padding: EdgeInsets.only(left: 5, bottom:10, right:5, top: 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.green,
                                          Colors.green,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left:5, bottom:0, right:5, top:0),
                                          padding: EdgeInsets.only(left:5, bottom:5, right:5, top: 5),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.white,
                                                Colors.white,
                                              ],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left:0, bottom:0, right:5, top:0),
                                          child: Text("ONLINE", style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                          padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                          height: 515,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
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
                                    padding: EdgeInsets.only(left:240, bottom:0, right:10, top:200),
                                    child: Container(
                                      height: 35.0,
                                      width: 95.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.blueGrey[300]!,
                                            Colors.blueGrey[300]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                                            child: Text("Merhaba", style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                          ),
                                          Container(
                                            height: 25.0,
                                            width: 25.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.blueGrey[300]!,
                                                  Colors.blueGrey[300]!,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(30)),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/hi.png'),
                                                  scale: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:200),
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/FetihChat.png'),
                                            scale: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:10, bottom:0, right:10, top:10),
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/TuğçeChat.png'),
                                            scale: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:10),
                                    child: Container(
                                      height: 35.0,
                                      width: 125.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.deepOrange[50]!,
                                            Colors.deepOrange[50]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                                            child: Text("Merhaba Fetih", style: TextStyle(color: Colors.deepOrange, fontSize: 13.0),),
                                          ),
                                          Container(
                                            height: 25.0,
                                            width: 25.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.deepOrange[50]!,
                                                  Colors.deepOrange[50]!,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(30)),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/hi.png'),
                                                  scale: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:115, bottom:0, right:10, top:10),
                                    child: Container(
                                      height: 35.0,
                                      width: 220.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.blueGrey[300]!,
                                            Colors.blueGrey[300]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                                            child: Text("Ara öğünümle alakalı bir sorum var.", style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:10),
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/FetihChat.png'),
                                            scale: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:10, bottom:0, right:10, top:10),
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/TuğçeChat.png'),
                                            scale: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:10),
                                    child: Container(
                                      height: 35.0,
                                      width: 185.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.deepOrange[50]!,
                                            Colors.deepOrange[50]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                                            child: Text("Seni dinliyorum, sorun nedir?", style: TextStyle(color: Colors.deepOrange, fontSize: 13.0),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, bottom:0, right:0, top:50),
                                    child:Container(
                                      height: 60.0,
                                      width: 210.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            const Padding(
                                              padding: EdgeInsets.only(left: 20, bottom: 5, right:0, top: 5),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Bir şeyler yaz...',
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, bottom:0, right:15, top: 50),
                                    child:Container(
                                        child: GestureDetector(
                                          onTap: (){
                                            Get.to;
                                          },
                                          child: Container(
                                            height: 60.0,
                                            width: 60.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.blueGrey[300]!,
                                                  Colors.blueGrey[300]!,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/upload.png'),
                                                  scale: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 50),
                                    child:Container(
                                        child: GestureDetector(
                                          onTap: (){
                                            Get.to;
                                          },
                                          child: Container(
                                            height: 60.0,
                                            width: 60.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.blueGrey[300]!,
                                                  Colors.blueGrey[300]!,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/voice.png'),
                                                  scale: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      );
}