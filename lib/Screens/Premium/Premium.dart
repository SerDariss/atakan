import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PremiumPage extends StatefulWidget {
  @override
  _PremiumPage createState() => _PremiumPage();
}

class _PremiumPage extends State<PremiumPage> {
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
                padding: EdgeInsets.only(left:120, bottom:0, right:0, top:180),
                child: Text("PREMIUM'A GE????N", style: TextStyle(color: Colors.white, fontSize: 18.0),),
              ),
            ],
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
                title: Text('Canl?? Yay??n',style: TextStyle(color: Colors.white, fontSize: 15.0),),
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
                title: Text('Hesab??m',style: TextStyle(color: Colors.white, fontSize: 15.0),),
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
    height: 480,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left:0, bottom:365, right:0, top:0),
                child: Text("L??tfen Plan Se??iniz", style: TextStyle(color: Colors.black, fontSize: 15.0),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom:285, right:0, top:0),
                child:Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:60),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:20, bottom:0, right:40, top:0),
                        child: Text("1 AY", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:100, top:0),
                        child: Text("3 AY", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:30, top:0),
                        child: Text("12 AY", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Text("24 AY", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
                child:Container(
                  margin: EdgeInsets.only(left:0, bottom:295, right:0, top:70),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.deepOrange,
                        Colors.orange,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child:Center(
                    child: Text("6 AY", style: TextStyle(color: Colors.white, fontSize: 17.0),),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:170),
                    child: Text("TOPLAM TUTAR", style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                    child: Text("899.00 TL", style: TextStyle(color: Colors.black, fontSize: 33.0),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
                    child:Container(
                        child: GestureDetector(
                          onTap: (){
                            Get.to;
                          },
                          child: Container(
                            height: 50.0,
                            width: 350.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.green[50]!,
                                  Colors.green[50]!,
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            child: Center(
                              child: Text('KAZANCINIZ 199.00 TL', style: TextStyle(color: Colors.green, fontSize: 18.0),),
                            ),
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
                    child:Container(
                        child: GestureDetector(
                          onTap: (){
                            Get.to;
                          },
                          child: Container(
                            height: 50.0,
                            width: 350.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepOrange[100]!,
                                  Colors.deepOrange[100]!,
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            child: Row(
                              children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                                    child: Text('%20 ??ndiriminiz Mevcut', style: TextStyle(color: Colors.deepOrange, fontSize: 16.0),),
                                  ),
                                Padding(
                                  padding: EdgeInsets.only(left:55, bottom:0, right:0, top:0),
                                  child: Container(
                                    height: 35.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.deepOrange,
                                          Colors.orange,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                    ),
                                    child: Center(
                                      child: Text('KULLAN', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:20),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to;
                              },
                              child: Container(
                                height: 50.0,
                                width: 350.0,
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
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:20),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to;
                              },
                              child: Container(
                                height: 50.0,
                                width: 300.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.deepOrange,
                                      Colors.orange,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left:40, bottom:0, right:0, top:0),
                                      child: Text('SATIN AL', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                        ),
                                  ],
                                ),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:315, bottom:0, right:0, top:37),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to;
                              },
                              child: Container(
                                height: 15.0,
                                width: 15.0,
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
                                      image: AssetImage('assets/shop.png'),
                                      scale: 1,
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
            ],
          ),
          Container(
            margin: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
            padding: EdgeInsets.only(left:0, bottom:20, right:0, top:0),
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
                  padding: EdgeInsets.only(left:0, bottom:15, right:225, top:15),
                  child: Text('PAKET HAKKINDA', style: TextStyle(color: Colors.black, fontSize: 18.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  child: Text('Kilo almak, kilo vermek ya da kaslar??n?? geli??tirmek istiyorsan;', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:16, top:0),
                  child: Text('Avatar Atakan Uzaktan E??itim Uygulamas??n?? indir, 7 d??nya', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:29, top:0),
                  child: Text('??ampiyonlu??u bulunan bir milli sporcunun tavsiyeleri ile', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:20, right:72, top:0),
                  child: Text('formda kal! ??stedi??ini alman i??in her ??ey burada!', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:25, top:0),
                  child: Text('T??rkiye???nin en iyi egzersiz ve beslenme uygulamas?? olan', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:10, top:0),
                  child: Text('Avatar Atakan Uzaktan E??itim ile art??k egzersiz yapmayan', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:7, top:0),
                  child: Text('kimse kalmayacak! Hayat??n?? sa??l??kl?? ya??amaya adam???? bir', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:7, top:0),
                  child: Text('profesyonel ya da egzersiz ve beslenme konusunda hi??bir', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:2, bottom:0, right:0, top:0),
                  child: Text('??ey bilmeyen biri olman sorun de??il. Avatar Atakan Uzaktan', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:10, top:0),
                  child: Text('E??itim Uygulamas??nda; her seviyeden ????renciye ve ki??iye', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:37, top:0),
                  child: Text('??zel haz??rlanan egzersiz ve beslenme programlar?? ile', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:10, top:0),
                  child: Text('kendini, senin i??in en iyisini planlayan ve bilen uzmanlara', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:325, top:0),
                  child: Text('b??rak!', style: TextStyle(color: Colors.grey, fontSize: 14.0),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
}