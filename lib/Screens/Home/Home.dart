import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Screens/Antrenman/antrenman.dart';
import 'package:atakan/Screens/Antrenman/guidence-1.dart';
import 'package:atakan/Screens/Beslenme/beslenme_screen.dart';
import 'package:atakan/Screens/Beslenme/guidence-2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Components/NavBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Hesabim-Background.png'),
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
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/home.png"),
                  color: Colors.deepOrange,
                ),
                title: Text('Anasayfa',style: TextStyle(color: Colors.deepOrange, fontSize: 15.0),),
              ),
              BottomNavigationBarItem(
                icon: Icon(AtakanIcons.barbell_2,color: Colors.white, size:25,),
                title: Text('Antrenman',style: TextStyle(color: Colors.white, fontSize: 15.0),),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/yay.png"),
                  color: Colors.white,
                ),
                title: Text('Canlı Yayın',style: TextStyle(color: Colors.white, fontSize: 15.0),),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/ye.png"),
                  color: Colors.white,
                ),
                title: Text('Beslenme',style: TextStyle(color: Colors.white, fontSize: 15.0),),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/pe.png"),
                  color: Colors.white,
                ),
                title: Text('Hesabım',style: TextStyle(color: Colors.white, fontSize: 15.0),),
              ),
            ]
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
  @override
  Widget build(BuildContext context) => Container(
    height: 380,
    padding: EdgeInsets.all(0),
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
          Container(
          margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
          padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
          height: 100,
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
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, bottom:20, right:0, top:20),
                padding: EdgeInsets.only(left: 40, bottom:0, right:25, top:0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Fetih.png'),
                      fit: BoxFit.fill
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                ),
              ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, bottom:5, right:30, top: 30),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child:(
                                Text("Hoş geldin,", style: TextStyle(color: Colors.grey, fontSize: 13.0),
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:0, top: 0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child:(
                                Text("Fetih AKDOĞAN", style: TextStyle(color: Colors.black, fontSize: 16.0),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
              Padding(
                padding: EdgeInsets.only(left: 100, bottom:0, right:0, top: 0),
                child: Container(
                height: 50.0,
                width: 50.0,
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
                      image: AssetImage('assets/ayar-tru.png'),
                      scale: 2,
                    ),
                  ),
                ),
              ),
              ),
            ],
          ),
          ),
                  ]
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left: 5, bottom:0, right:5, top: 0),
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
                  child: Row(
                  children:[
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:15, bottom:0, right:0, top: 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child:(
                                Text("HİKAYELER", style: TextStyle(color: Colors.grey, fontSize: 15.0),
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:10, bottom:5, right:0, top:10),
                          padding: EdgeInsets.only(left:30, bottom:60, right:30, top:0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Hikayen.png'),
                                fit: BoxFit.fill
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22, bottom:15, right:15, top: 0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child:(
                                Text("Hikayen", style: TextStyle(color: Colors.grey, fontSize: 13.0),
                                )
                            ),
                          ),
                        ),
                      ]
                  ),
                    Column(
                    children: [
                      Container(
                      margin: EdgeInsets.only(left: 10, bottom:0, right:0, top:24),
                      padding: EdgeInsets.only(left:30, bottom:60, right:30, top:0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Atakan.png'),
                            fit: BoxFit.fill
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.white,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom:0, right:0, top: 5),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child:(
                              Text("Atakan A.", style: TextStyle(color: Colors.black, fontSize: 13.0),
                              )
                          ),
                        ),
                      ),
                    ]
                    ),
                    Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom:0, right:0, top:24),
                            padding: EdgeInsets.only(left:30, bottom:60, right:30, top:0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Gizem.png'),
                                  fit: BoxFit.fill
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom:0, right:0, top: 5),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child:(
                                  Text("Gizem M.", style: TextStyle(color: Colors.black, fontSize: 13.0),
                                  )
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom:0, right:0, top:24),
                            padding: EdgeInsets.only(left:30, bottom:60, right:30, top:0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Mert.png'),
                                  fit: BoxFit.fill
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom:0, right:0, top: 5),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child:(
                                  Text("Mert T.", style: TextStyle(color: Colors.black, fontSize: 13.0),
                                  )
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom:0, right:0, top:24),
                            padding: EdgeInsets.only(left:30, bottom:60, right:30, top:0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Tuğba.png'),
                                  fit: BoxFit.fill
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom:0, right:0, top: 5),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child:(
                                  Text("Tuğba H.", style: TextStyle(color: Colors.black, fontSize: 13.0),
                                  )
                              ),
                            ),
                          ),
                        ]
                    ),
                      ]
                      )
                ),
                Stack(
                  children: [
                    Container(
                    margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
                    padding: EdgeInsets.only(left: 5, bottom:0, right:5, top: 0),
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
                    child: Stack(
                        children:[
                          Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, bottom:0, right:0, top: 10),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child:(
                                        Text("ANTRENMAN", style: TextStyle(color: Colors.grey, fontSize: 15.0),
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0, bottom: 10, right:280, top: 15),
                                  child:Container(
                                      child: GestureDetector(
                                        onTap: (){
                                          Get.to(AntrenmanPage());
                                        },
                                        child: Container(
                                          height: 80.0,
                                          width: 90.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.deepOrange,
                                                Colors.orange,
                                              ],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 10),
                                                child: Icon(
                                                  AtakanIcons.barbell_2,
                                                  color:Colors.white,
                                                  size:30,
                                                ),
                                              ),
                                              Text('Kişisel', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                              Text('Antrenmanlar', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                ),
                              ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 105, bottom: 0, right:13, top: 45),
                            child:Container(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to(GuidencePage1());
                                  },
                                  child: Container(
                                    height: 80.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:15),
                                          padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 20),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/help-tru.png'),
                                              scale: 2,
                                            ),
                                          ),
                                        ),
                                        Text('Uzamana', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                                        Text('Danış', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:125, bottom:0, right:0, top:36),
                            child:  Container(
                              margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                              padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                              height:20,
                              width: 20,
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
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                height:10,
                                width: 10,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.lightGreen,
                                      Colors.lightGreen,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                              ),
                            ),
                          ),
                          Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left:205, bottom:0, right:0, top: 10),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child:(
                                        Text("BESLENME", style: TextStyle(color: Colors.grey, fontSize: 15.0),
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left:110, bottom: 10, right:0, top: 15),
                                  child:Container(
                                      child: GestureDetector(
                                        onTap: (){
                                          Get.to(BeslenmePage());
                                        },
                                        child: Container(
                                          height: 80.0,
                                          width: 90.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.deepOrange,
                                                Colors.orange,
                                              ],
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:15),
                                              padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 20),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/beslenme.png'),
                                                scale: 2,
                                              ),
                                            ),
                                          ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 5, bottom: 0, right:5, top: 5),
                                              child:Text('Beslenme', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 5, bottom: 0, right:5, top:0),
                                              child:Text('Programı', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                            ),
                                          ]
                                          ),
                                        ),
                                      )
                                  ),
                                ),
                            ]
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 300, bottom: 0, right:20, top: 45),
                            child:Container(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to(GuidencePage2());
                                  },
                                  child: Container(
                                    height: 80.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:15),
                                          padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 20),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/help-tru.png'),
                                              scale: 2,
                                            ),
                                          ),
                                        ),
                                        Text('Uzamana', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                                        Text('Danış', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ]
                    )
  ),
                    ],
                ),
              ],
          ),
        ]
    ),
  );
}