import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CanliYayinPage extends StatefulWidget {
  @override
  _CanliYayinPage createState() => _CanliYayinPage();
}

class _CanliYayinPage extends State<CanliYayinPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Canlı-Yayın-Takvimi-Background.png'),
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
                    padding: EdgeInsets.only(left:100, bottom:0, right:0, top:180),
                    child: Text("ONLINE GRUP DERSLERİ", style: TextStyle(color: Colors.white, fontSize: 18.0),),
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
    'assets/krono.png'
  ];
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(15),
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
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: EdgeInsets.only(left:3 , bottom:20, right:15, top: 5),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to;
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.blueGrey[300]!,
                                      Colors.blueGrey[300]!,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color:Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:20, right:0, top: 5),
                      child:Container(
                        child: Container(
                          height: 50.0,
                          width: 220.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.deepOrange,
                                Colors.deepOrange,
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Center(
                            child: Text('PAZARTESİ', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Padding(
                          padding: EdgeInsets.only(left:20, bottom:20, right:0, top: 5),
                          child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to;
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.blueGrey[300]!,
                                      Colors.blueGrey[300]!,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color:Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                  ]
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:20, right:0, top:0),
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
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: buildIndicator(),
              ),
                ]
              ),
         ]
    ),
  );

  Widget buildImage(String assetImage, int index) => Container(
    child: Stack(
      children: [
        Image.asset(
          assetImage,
          fit: BoxFit.fill,
        ),
    Container(
      margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
      padding: EdgeInsets.only(left:0 , bottom:0, right:0, top:0),
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
          children: [
      Container(
      margin: EdgeInsets.only(left: 0, bottom:217, right:0, top:0),
      padding: EdgeInsets.only(left:0 , bottom:0, right:0, top:0),
      height: 150,
      width: 362,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Crunch.png'),
            scale: 1,
            fit: BoxFit.fill
        ),
        border: Border.all(color: Colors.grey),
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
    ),
    Padding(
      padding: EdgeInsets.only(left:120, bottom:0, right:0, top:0),
      child:Container(
          child: GestureDetector(
            onTap: (){
              Get.to;
            },
            child: Container(
              height: 30.0,
              width: 110.0,
              decoration: BoxDecoration(
                border: Border.all(color:Colors.deepOrange,),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.deepOrange,
                    Colors.deepOrange,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:10, bottom:0, right:0, top:0),
                    child: Text('ŞİMDİ CANLI',style: TextStyle(color: Colors.white, fontSize: 15.0),),
                  ),
                ],
              ),
            ),
          )
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
      child: Container(
        margin: EdgeInsets.only(left:145, bottom:0, right:110, top:90),
        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Era.png'),
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
    Padding(
      padding: EdgeInsets.only(left:0, bottom:5, right:0, top: 30),
      child:Container (
        alignment: Alignment.center,
        child: (
            Text("Era ERKMEN", style: TextStyle(color: Colors.black, fontSize: 15.0),
            )
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 5, bottom:5, right:5, top: 90),
      child:Container (
        alignment: Alignment.center,
        child: (
            Text("CRUNCH", style: TextStyle(color: Colors.deepOrange, fontSize: 17.0),
            )
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 5, bottom:1, right:5, top: 130),
      child:Container (
        alignment: Alignment.center,
        child: (
            Text("40 dakika boyunca sadece karın kaslarını kuvvetlendirmeye", style: TextStyle(color: Colors.black, fontSize: 11.0),
            )
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 5, bottom:5, right:5, top: 160),
      child:Container (
        alignment: Alignment.center,
        child: (
            Text("ve sıkılaştırmaya yönelik bir derstir.", style: TextStyle(color: Colors.black, fontSize: 11.0),
            )
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 10, bottom: 10, right:10, top: 275),
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
                    Colors.orange,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Center(
                child: Text('CANLI YAYINA KATIL', style: TextStyle(color: Colors.white, fontSize: 15.0),),
              ),
            ),
          )
      ),
    ),
      ],
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
}