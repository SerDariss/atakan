import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Screens/Antrenman/video.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProteinPage extends StatefulWidget {
  @override
  _ProteinPage createState() => _ProteinPage();
}

class _ProteinPage extends State<ProteinPage> {
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
                padding: EdgeInsets.only(left:45, bottom:0, right:0, top:165),
                child: Text("Hardline Whey 3 Matrix Protein Tozu", style: TextStyle(color: Colors.white, fontSize: 19.0),),
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

  @override
  Widget build(BuildContext context) =>
      Container(
        height: 530,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom:0, right:20, top:20),
                    padding: EdgeInsets.only(left: 5, bottom:30, right:5, top: 30),
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
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom:0, right:15, top: 0),
                          padding: EdgeInsets.only(left:0, bottom:130, right:0, top:130),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            image: DecorationImage(
                              image: AssetImage('assets/protein.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(13.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                      children :[
                        Padding(
                          padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                          child: Text('579,00 TL', style: TextStyle(color: Colors.black, fontSize: 30.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70, bottom: 10, right:0, top: 10),
                          child:Container(
                              child: GestureDetector(
                                onTap: (){
                                  Get.to;
                                },
                                child: Container(
                                  height: 75.0,
                                  width: 150.0,
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
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 35, bottom:0, right:0, top: 25),
                                    child: Text('SATIN AL', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                  ),
                                ),
                              )
                          ),
                        ),
                      ]
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:10),
                    padding: EdgeInsets.only(left: 5, bottom:30, right:5, top: 30),
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
                          padding: EdgeInsets.only(left: 0, bottom:20, right:200, top: 0),
                          child: Text('Ürün Açıklaması', style: TextStyle(color: Colors.grey[600]!, fontSize: 18.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:80, top: 0),
                          child: Text('Hardline Whey 3 Matrix Protein Tozu 2300 gr', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0, bottom:20, right:185, top: 0),
                          child: Text('WHEY 3MATRIX NEDİR?', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:20, top: 0),
                          child: Text('Düşük ısıda mikro filtre edilmiş, yüksek standartlı whey', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:10, top: 0),
                          child: Text('protein konsantresi, Bipro whey protein izolatı ve peptid ', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:5, top: 0),
                          child: Text('formdaki whey protein hidrolizatı ile formüle edilmiş özel ', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:40, top: 0),
                          child: Text('üründür. İlave şeker, karbonhidrat veya yağ içermez.', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:47, top: 0),
                          child: Text('Kıvamı ve hafif içimi ile damak zevkine hitap eder. ', style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:15, top: 0),
                          child: Text("Hardline Whey 3Matrix'in yenilenen formülü B6 vitamini", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:20, right:240, top: 0),
                          child: Text("ile desteklenmiştir.", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:10, right:280, top: 0),
                          child: Text("Yeni Formül", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:120, top: 0),
                          child: Text("-Her porsiyon 24.6 gram protein içerir.", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:30, top: 0),
                          child: Text("-Whey protein konsantresi, izolatı ve hidrolizatı içerir.", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:155, top: 0),
                          child: Text("-Her porsiyon 2 gr. Kreatin içerir.", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:240, top: 0),
                          child: Text("-B6 Vitamini içerir.", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:150, top: 0),
                          child: Text("-Düşük yağ ve karbonhidrat içerir,", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom:0, right:235, top: 0),
                          child: Text("--Aspartam içermez", style: TextStyle(color: Colors.grey[600]!, fontSize: 14.0),),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ],
        ),
      );
}