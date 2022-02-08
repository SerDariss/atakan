import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Screens/%C4%B0ndirim/Protein.dart';
import 'package:atakan/Screens/Antrenman/video.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndirimPage extends StatefulWidget {
  @override
  _IndirimPage createState() => _IndirimPage();
}

class _IndirimPage extends State<IndirimPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Antrenman-Background.png'),
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
                padding: EdgeInsets.only(left:145, bottom:0, right:0, top:190),
                child: Text("İNDİRİMLER", style: TextStyle(color: Colors.white, fontSize: 19.0),),
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
  int activeIndex = 0;
  final assetImages = [
    'assets/içerik1.png'
  ];
  final assetImages2 = [
    'assets/içerik2.png'
  ];

  @override
  Widget build(BuildContext context) =>
      Container(
        padding: EdgeInsets.only(top: 10, left:0,right:0),
        height: 520,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 20),
              padding: EdgeInsets.only(left: 0, bottom: 5, right: 0, top: 0),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 20),
                    padding: EdgeInsets.only(left: 0, bottom: 110, right: 0, top: 0),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[400]!,
                      image: DecorationImage(
                        image: AssetImage('assets/getir.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 20),
                    padding: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 30),
                          child: Text("Getir'de %20 indirim!", style: TextStyle(
                              color: Colors.deepPurpleAccent, fontSize: 20.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
                          child: Text("Getir'de 1 hafta boyunca sporcu",
                            style: TextStyle(
                                color: Colors.black, fontSize: 13.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 0),
                          child: Text(
                            "ürünlerinde geçerli %20 indiriminiz var!",
                            style: TextStyle(
                                color: Colors.black, fontSize: 13.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 30),
                          padding: EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 10),
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.deepPurple,
                                Colors.deepPurple
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(50.0)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 25, bottom: 0, right: 0, top: 0),
                                child: Text('İNDİRIM KODU: ATAKAN',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 70, bottom: 0, right: 0, top: 0),
                                padding: EdgeInsets.only(left: 3, bottom: 3, right: 3, top: 3),
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
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: Builder(builder: (context) =>
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(ProteinPage());
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(left:0, bottom: 0, right: 0, top: 0),
                                          child: Container(
                                            height: 50.0,
                                            width: 38.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.white,
                                                  Colors.white,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/page.png'),
                                                  scale: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 20),
              padding: EdgeInsets.only(left: 0, bottom: 5, right: 0, top: 0),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, bottom: 0, right: 15, top: 20),
                    padding: EdgeInsets.only(
                        left: 0, bottom: 110, right: 0, top: 0),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage('assets/Yemeksepeti.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 5, bottom: 0, right: 5, top: 20),
                    padding: EdgeInsets.only(
                        left: 0, bottom: 20, right: 0, top: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0, bottom: 10, right: 0, top: 30),
                          child: Text("Yemeksepeti'nde %20 indirim!",
                            style: TextStyle(
                                color: Colors.pinkAccent, fontSize: 20.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0, bottom: 0, right: 0, top: 0),
                          child: Text("Yemeksepeti'nde 1 hafta boyunca sporcu",
                            style: TextStyle(
                                color: Colors.black, fontSize: 13.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0, bottom: 10, right: 0, top: 0),
                          child: Text(
                            "ürünlerinde geçerli %20 indiriminiz var!",
                            style: TextStyle(
                                color: Colors.black, fontSize: 13.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 30),
                          padding: EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 10),
                          alignment: Alignment.center,
                          height: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.pinkAccent,
                                Colors.pinkAccent
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(50.0)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 25, bottom: 0, right: 0, top: 0),
                                child: Text('İNDİRIM KODU: ATAKAN',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 75, bottom: 0, right: 0, top: 0),
                                padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
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
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: Builder(builder: (context) =>
                                    Container(
                                      child: GestureDetector(
                                        onTap: () =>
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (context) =>
                                                  buildSheet3(),
                                            ),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 0,
                                              bottom: 0,
                                              right: 0,
                                              top: 0),
                                          child: Container(
                                            height: 50.0,
                                            width: 40.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.white,
                                                  Colors.white,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/page.png'),
                                                  scale: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}