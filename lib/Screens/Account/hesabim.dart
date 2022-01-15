import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:atakan/Screens/Premium/Premium.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HesabimPage extends StatefulWidget {
  @override
  _HesabimPage createState() => _HesabimPage();
}

class _HesabimPage extends State<HesabimPage> {
  int _count2 = 64;

  void _incrementCount2() {
    setState(() {
      _count2++;
    });
  }

  void _decrementCount2() {
    setState(() {
      _count2--;
    });
  }
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Stack(
          children: [
            Container(
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
            Padding(
              padding: EdgeInsets.only(left:0, bottom:0, right:0, top:250),
              child: Container(
                margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:2, right:0, top:20),
                      child:Container (
                        alignment: Alignment.center,
                        child: (
                            Text("Hoşgeldin,", style: TextStyle(color: Colors.grey, fontSize: 13.0),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5, bottom:0, right:0, top: 0),
                      child:Container (
                        alignment: Alignment.center,
                        child: (
                            Text("Fetih AKDOĞAN", style: TextStyle(color: Colors.black, fontSize: 15.0),
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:0, bottom:15, right:0, top:20),
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
                      height: 150,
                      width: 600,
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
                          Padding(
                            padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                            child: (
                                Text("ÜCRETSİZ HESAP", style: TextStyle(color: Colors.black, fontSize: 15.0),)
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 10),
                            child:Container(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to(() => PremiumPage());
                                  },
                                  child: Container(
                                    height: 60.0,
                                    width: 350.0,
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
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left:20, bottom:0, right:15, top:0),
                                          child: Container(
                                            margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                            padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                            height: 20,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('assets/dia.png'),
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
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                          ),
                                        ),
                                        Text("PREMIUM'A GEÇ",style: TextStyle(color: Colors.white, fontSize: 17.0),),
                                        Padding(
                                          padding: EdgeInsets.only(left:130, bottom: 0, right:15, top: 0),
                                          child: Icon(
                                            Icons.arrow_forward_rounded ,
                                            color:Colors.white,
                                            size: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                      child: (
                          Text("KİLO TAKİBİ", style: TextStyle(color: Colors.grey, fontSize: 13.0),)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                      child:Container(
                        height: 60.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                              child: Text('Kilo', style: TextStyle(color: Colors.black, fontSize: 18.0),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:103, bottom:0, right:0, top:0),
                              child: Container(
                                height: 50.0,
                                width: 190.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.deepOrange,
                                      Colors.deepOrange,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left:5, bottom:0, right:0, top:0),
                                      child: Container(
                                        child: IconButton(
                                          icon: Icon(Icons.remove),
                                          color: Colors.white,
                                          onPressed: _decrementCount2,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 37.0,
                                        width: 74.0,
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
                                        child: Text("${_count2}",style: TextStyle(color: Colors.black, fontSize: 18.0),),
                                      ),
                                    ),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(Icons.add),
                                        color: Colors.white,
                                        onPressed: _incrementCount2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                      child:Container(
                        height: 60.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                              child: Text('Kilo Geçmişi', style: TextStyle(color: Colors.black, fontSize: 18.0),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:35, bottom:0, right:5, top: 0),
                              child:Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.to;
                                    },
                                    child: Container(
                                      height: 50.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.blueGrey[300]!,
                                            Colors.blueGrey[300]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:0, bottom:0, right:0, top:7),
                                          child: Text('70', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                          ),
                                          Text('26 Ekim', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom:0, right:5, top: 0),
                              child:Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.to;
                                    },
                                    child: Container(
                                      height: 50.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.blueGrey[300]!,
                                            Colors.blueGrey[300]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:0, bottom:0, right:0, top:7),
                                            child: Text('68', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                          ),
                                          Text('30 Ekim', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
                              child:Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.to;
                                    },
                                    child: Container(
                                      height: 50.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.blueGrey[300]!,
                                            Colors.blueGrey[300]!,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:0, bottom:0, right:0, top:7),
                                            child: Text('66', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                          ),
                                          Text('8 Aralık', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:165, bottom:0, right:0, top:210),
              child: Container(
                margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/FetihPP.png'),
                      scale: 1,
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
            ),
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/home.png"),
                  color: Colors.white,
                ),
                title: Text('Anasayfa',style: TextStyle(color: Colors.white, fontSize: 15.0),),
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
                  color: Colors.deepOrange,
                ),
                title: Text('Hesabım',style: TextStyle(color: Colors.deepOrange, fontSize: 15.0),),
              ),
            ]
        ),
      );
}
