import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BeslenmePage2 extends StatefulWidget {
  @override
  _BeslenmePage2 createState() => _BeslenmePage2();
}

class _BeslenmePage2 extends State<BeslenmePage2> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Beslenme2-Background.png'),
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
                padding: EdgeInsets.only(left:110, bottom:0, right:0, top:180),
                child: Text("ATAKAN'IN MUTFAĞI", style: TextStyle(color: Colors.white, fontSize: 18.0),),
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
                  color: Colors.deepOrange,
                ),
                title: Text('Beslenme',style: TextStyle(color: Colors.deepOrange, fontSize: 15.0),),
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
    'assets/krono.png'
  ];
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(15),
    width: 600,
    height: 470,
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
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left:160, bottom:0, right:0, top:425),
                child: buildIndicator(),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:30, top:0),
                child: Container(
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 400,
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
          margin: EdgeInsets.only(left:30, bottom:0, right:0, top:100),
          padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
          height:380,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.red[50]!,
                Colors.red[50]!,
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left:30, bottom:0, right:0, top:25),
                child:Container (
                  alignment: Alignment.centerLeft,
                  child: (
                      Text("Proteinli Kurabiye", style: TextStyle(color: Colors.deepOrange, fontSize: 16.0),
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:90, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("1,5 su bardağı yulaf unu", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:165, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top:10),
                      child: Text("2 Yumurta", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:65, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Yarım çay bardağı zeytinyağı", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:80, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Kuru üzüm (Bol miktarda)", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:170, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Toz tarçın", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:105, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Hindistan cevizi tozu", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:190, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Kakao", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:120, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Ceviz (Öğütülmüş)", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:8, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Protein tozu (İsteğe göre istenilen tat)", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, bottom:0, right:100, top:0),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:10, bottom:0, right:0, top: 10),
                      child: Text("Bitter damla çikolata)", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child: Text(".", style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left:30, bottom:0, right:0, top:10),
          padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
          height:100,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Beslenme-Kurabiye.png'),
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