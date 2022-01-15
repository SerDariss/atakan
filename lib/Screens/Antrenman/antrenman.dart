import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Screens/Antrenman/video.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AntrenmanPage extends StatefulWidget {
  @override
  _AntrenmanPage createState() => _AntrenmanPage();
}

class _AntrenmanPage extends State<AntrenmanPage> {
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
                padding: EdgeInsets.only(left:130, bottom:0, right:0, top:175),
                child: Text("ANTRENMANIM", style: TextStyle(color: Colors.white, fontSize: 18.0),),
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
                  color: Colors.white,
                ),
                title: Text('Anasayfa',style: TextStyle(color: Colors.white, fontSize: 15.0),),
              ),
              BottomNavigationBarItem(
                icon: Icon(AtakanIcons.barbell_2,color: Colors.deepOrange, size:25,),
                title: Text('Antrenman',style: TextStyle(color: Colors.deepOrange, fontSize: 15.0),),
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
  int activeIndex = 0;
  final assetImages = [
    'assets/içerik1.png'
  ];
  final assetImages2 = [
    'assets/içerik2.png'
  ];
  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
    initialChildSize:0.68,
    builder: (_, controller) => Container(
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
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:15),
                      child: buildIndicator(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:20, right:0, top:15),
                    child: Container(
                        child: CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 350,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) =>
                                  setState(() => activeIndex = index),
                            ),
                            itemCount: assetImages.length,
                            itemBuilder: (context, index, realIndex) {
                              final assetImage = assetImages[index];
                              return buildImage(assetImage, index);
                            }
                            )
                    ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:10),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children : [
                      Padding(
                        padding: EdgeInsets.only(left:30, bottom:0, right:140, top:20),
                        child: Text('ANTRENMAN İÇERİĞİ',style: TextStyle(color: Colors.grey, fontSize: 17.0),),
                      ),
                          Padding(
                            padding: EdgeInsets.only(left:0, bottom:0, right:0, top:20),
                          child: buildIndicator2(),
                          ),
                        ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:30, bottom:20, right:0, top:20),
                        child: Container(
                            child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 340,
                                  viewportFraction: 1,
                                ),
                                itemCount: assetImages2.length,
                                itemBuilder: (context, index, realIndex) {
                                  final assetImage = assetImages2[index];
                                  return buildImage2(assetImage, index);
                                }
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    ),
  );
  Widget buildImage(String assetImage, int index) => Container(
    child: Stack(
      children: [
        Image.asset(
            assetImage,
            fit: BoxFit.fill,
          ),
        Padding(
          padding: EdgeInsets.only(left:80, bottom:0, right:0, top:100),
        child: Text('ANTRENMAN ADI',style: TextStyle(color: Colors.white, fontSize: 23.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:0, right:0, top:190),
          child:Container(
              child: GestureDetector(
                onTap: (){
                  Get.to;
                },
                child: Container(
                  height: 60.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    border: Border.all(width:3 ,color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                        child: Image(
                          image: AssetImage('assets/krono.png'),
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:5, bottom:0, right:0, top:0),
                        child: Text('15 Dakika',style: TextStyle(color: Colors.white, fontSize: 18.0),),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:180, bottom:0, right:0, top:190),
          child:Container(
              child: GestureDetector(
                onTap: (){
                  Get.to;
                },
                child: Container(
                  height: 60.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    border: Border.all(width:3 ,color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                        child: Image(
                          image: AssetImage('assets/beat.png'),
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:5, bottom:0, right:0, top:0),
                        child: Text('7 Egzersiz',style: TextStyle(color: Colors.white, fontSize: 18.0),),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom: 0, right:0, top: 265),
          child:Container(
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => buildSheet4(),
                ),
                child: Container(
                  height: 60.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:45, bottom:0, right:0, top:0),
                        child: Text('ANTRENMANA BAŞLA', style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),
      ],
    ),
  );
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: assetImages.length,
    effect: ExpandingDotsEffect(
      dotHeight: 7,
      dotWidth: 10,
      activeDotColor: Colors.deepOrange,
    ),
  );

  Widget buildIndicator2() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: assetImages2.length,
    effect: ExpandingDotsEffect(
      dotHeight: 7,
      dotWidth: 10,
      activeDotColor: Colors.deepOrange,
    ),
  );



  Widget buildImage2(String assetImage, int index) => Container(
    child: GestureDetector(
      onTap: (){
        Get.to(VideoPage());
        },
    child: Stack(
      children: [
        Image.asset(
          assetImage,
          fit: BoxFit.fill,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left:225, bottom:0, right:5, top:10),
              child: Image(
                image: AssetImage('assets/tekrar.png'),
                height: 15,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:0, bottom:0, right:0, top:10),
              child: Text('10 Tekrar',style: TextStyle(color: Colors.white, fontSize: 15.0),),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:0, right:0, top:130),
          child: Text('Air Squat',style: TextStyle(color: Colors.white, fontSize: 20.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:180),
        child: Text('Vücudunuz dik ve ayaklarınız omuz genişliği',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:192),
          child: Text('kadar açık olsun. Bu konumda nefes alın ve vücut',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:204),
          child: Text('öne eğilmeden, bacaklarınız ile yer arasında 90',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:216),
          child: Text('derecelik bir açı oluşturana kadar çömelin. Nefes',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:228),
          child: Text('verin ve dik dik konumunuza dönün. Egzersiz',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:240),
          child: Text('sırasında omurganın zarar görmemesi için vücut',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:252),
          child: Text('dikliğini korumaya dikkat edilmesi, bacak ve kalça',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20, right:0, top:264),
          child: Text('kaslarının çalışması gerekiyor.',style: TextStyle(color: Colors.white, fontSize: 13.0),),
        ),
      ],
    ),
  ),
  );
}

