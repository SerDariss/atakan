import 'package:atakan/Screens/Account/hesabim.dart';
import 'package:atakan/Screens/Antrenman/antrenman.dart';
import 'package:atakan/Screens/Antrenman/guidence-1.dart';
import 'package:atakan/Screens/Beslenme/beslenme_screen.dart';
import 'package:atakan/Screens/Beslenme/beslenme_screen_2.dart';
import 'package:atakan/Screens/Beslenme/guidence-2.dart';
import 'package:atakan/Screens/Login/login_screen.dart';
import 'package:atakan/Screens/Premium/Premium.dart';
import 'package:atakan/Screens/Register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:atakan/Components/AtakanIcons.dart';
import 'package:get/get.dart';

class NavBar  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            height: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.zero
              ),
              color: Colors.white,
            ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom:15, right:20, top:35),
                    padding: EdgeInsets.only(left: 30, bottom:10, right:50, top:50),
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
                        padding: EdgeInsets.only(left: 0, bottom:5, right:30, top: 35),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child:(
                              Text("Hoş geldin,", style: TextStyle(color: Colors.grey, fontSize: 13.0),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child:(
                              Text("Fetih AKDOĞAN", style: TextStyle(color: Colors.black, fontSize: 13.0),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                child: Row(
                  children: [
                Padding(
                  padding: EdgeInsets.only(left:15, bottom:0, right:0, top:10),
                child:Text("ÜCRETSİZ HESAP", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                ),
                  ],
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 10, right:30, top: 10),
                child:Container(
                    child: GestureDetector(
                      onTap: (){
                        Get.to(PremiumPage());
                      },
                      child: Container(
                        height: 60.0,
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
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:15, bottom:0, right:9, top:0),
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
                            Text("PREMIUM'A GEÇ",style: TextStyle(color: Colors.white, fontSize: 15.0),),
                            Padding(
                              padding: EdgeInsets.only(left:60, bottom: 0, right:15, top: 0),
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
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color:Colors.grey,),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                ),
              child: ListTile(
                leading: Image(image: AssetImage('assets/person-gri.png'),height: 25,),
                title: Text('HESABIM',style: TextStyle(color: Colors.black, fontSize: 13.0),),
                onTap: (){
                  Get.to(HesabimPage());
                },
              ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.local_restaurant_rounded,color: Colors.grey,size:30,),
                    title: Text("ATAKAN'IN MUTFAĞI",style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: (){
                      Get.to(BeslenmePage2());
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(AtakanIcons.barbell_2,color: Colors.grey,size:30,),
                    title: Text('KİŞİSEL ANTRENMANLAR',style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: (){
                      Get.to(AntrenmanPage());
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/beslenme-gri.png'),height: 25,),
                    title: Text('BESLENME PROGRAMI',style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: (){
                      Get.to(BeslenmePage());
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/percent-gri.png'),height: 25,),
                    title: Text('SANA ÖZEL İNDİRİMLER',style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => buildSheet(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/help-gri.png'),height: 25,),
                    title: Text("PERSONAL TRAINER'A DANIŞ",style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: (){
                      Get.to(GuidencePage1());
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/help-gri.png'),height: 25,),
                    title: Text("BESLENME UZMANINA DANIŞ",style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: (){
                      Get.to(GuidencePage2());
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/ayarlar-gri.png'),height: 25,),
                    title: Text("AYARLAR",style: TextStyle(color: Colors.black, fontSize: 13.0),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color:Colors.grey,),
                      bottom: BorderSide(color:Colors.grey,),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/logout-gri.png'),height: 25,),
                    title: Text("ÇIKIŞ YAP",style: TextStyle(color: Colors.black, fontSize: 13.0),),
                    onTap: (){
                      Get.to(MyHomePage());
                    },
                  ),
                ),
              ),
            ],
          ),
    ),
        ],
      ),
    );
  }
}


Widget buildSheet() => Container(
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
      Container(
        margin: EdgeInsets.only(left: 20, bottom:0, right:20, top: 20),
        padding: EdgeInsets.only(left: 0, bottom:5, right:0, top:0),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(13.0)),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, bottom:0, right:15, top: 20),
              padding: EdgeInsets.only(left: 0, bottom:110, right:0, top:0),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                  image: AssetImage('assets/getir.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, bottom:0, right:5, top: 20),
              padding: EdgeInsets.only(left: 0, bottom:20, right:0, top:0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:10, right:0, top:30),
                  child: Text("Getir'de %20 indirim!", style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20.0),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
                  child: Text("Getir'de 1 hafta boyunca sporcu", style: TextStyle(color: Colors.black, fontSize: 13.0),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:10, right:0, top:0),
                  child: Text("ürünlerinde geçerli %20 indiriminiz var!", style: TextStyle(color: Colors.black, fontSize: 13.0),
                  ),
                  ),
              Container(
                margin: EdgeInsets.only(left: 15, bottom:0, right:15, top: 30),
                padding: EdgeInsets.only(left: 0, bottom:10, right:0, top:10),
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
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, bottom:0, right:0, top:0),
                    child: Text('İNDİRIM KODU: ATAKAN', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60, bottom:0, right:0, top:0),
                      padding: EdgeInsets.only(left: 3, bottom:3, right:3, top: 3),
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
                      child: Builder( builder:(context) => Container(
                        child: GestureDetector(
                          onTap: ()=> showModalBottomSheet(
                            context: context,
                            builder: (context) => buildSheet3(),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white,
                                    Colors.white,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/page.png'),
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
        margin: EdgeInsets.only(left: 20, bottom:0, right:20, top: 20),
        padding: EdgeInsets.only(left: 0, bottom:5, right:0, top:0),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(13.0)),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, bottom:0, right:15, top: 20),
              padding: EdgeInsets.only(left: 0, bottom:110, right:0, top:0),
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
              margin: EdgeInsets.only(left: 5, bottom:0, right:5, top: 20),
              padding: EdgeInsets.only(left: 0, bottom:20, right:0, top:0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:10, right:0, top:30),
                    child: Text("Yemeksepeti'nde %20 indirim!", style: TextStyle(color: Colors.pinkAccent, fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
                    child: Text("Yemeksepeti'nde 1 hafta boyunca sporcu", style: TextStyle(color: Colors.black, fontSize: 13.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:10, right:0, top:0),
                    child: Text("ürünlerinde geçerli %20 indiriminiz var!", style: TextStyle(color: Colors.black, fontSize: 13.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, bottom:0, right:15, top: 30),
                    padding: EdgeInsets.only(left: 0, bottom:10, right:0, top:10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.pinkAccent,
                          Colors.pinkAccent
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25, bottom:0, right:0, top:0),
                          child: Text('İNDİRIM KODU: ATAKAN', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 65, bottom:0, right:0, top:0),
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
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ),
                          child: Builder( builder:(context) => Container(
                            child: GestureDetector(
                              onTap: ()=> showModalBottomSheet(
                                context: context,
                                builder: (context) => buildSheet3(),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.white,
                                        Colors.white,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/page.png'),
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

Widget buildSheet2() => Container(
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
      Padding(
        padding: EdgeInsets.only(left: 0, bottom:15, right:0, top:20),
        child: Container(
          alignment: Alignment.center,
        child: Text('BİLDİRİMLER', style: TextStyle(color: Colors.deepOrange, fontSize: 17.0),),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
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
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, bottom:0, right:0, top: 10),
                child: Text('1 Haftalık Premium hesabınıza tanımlanmıştır', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, bottom:0, right:80, top: 0),
                child: Text('Bildirim 2.satır için konuyu uzat.', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:0, right:10, top: 10),
                    child: Icon(
                      Icons.access_time,
                      color:Colors.grey,
                      size:15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, bottom:0, right:110, top: 10),
                    child: Text('14 Ekim 2021 - 22:00', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                ),
                ]
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 21.3, bottom: 0, right:0, top: 0),
              child:Container(
                  child: GestureDetector(
                    onTap: (){
                      Get.to;
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.redAccent,
                            Colors.redAccent,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 5, right:0, top: 25),
                            child: Icon(
                              Icons.delete_forever_outlined,
                              color:Colors.white,
                              size:30,
                            ),
                          ),
                          Text('Bildirimi Sil', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                        ],
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, right:0, top: 20),
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
                            Colors.deepOrange,
                            Colors.orange,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/elmas.png'),
                            scale: 2,
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 25),
                  child: Text("Premium'unuzun süresi bitti. Hemen", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:80, top: 0),
                  child: Text('Yenilemek için tıklayın.', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, bottom:20, right:5, top: 10),
                        child: Icon(
                          Icons.access_time,
                          color:Colors.grey,
                          size:15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:100, top: 10),
                        child: Text('14 Ekim 2021 - 22:00', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, right:30, top: 20),
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
                            Colors.deepPurple,
                            Colors.deepPurple,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/getir.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  )
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:40, top: 25),
                  child: Text("Getir'de 1 hafta boyunca sporcu", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
                  child: Text('ürünlerinde geçerli %20 indiriminiz var!', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:5, top: 10),
                        child: Icon(
                          Icons.access_time,
                          color:Colors.grey,
                          size:15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:80, top: 10),
                        child: Text('14 Ekim 2021 - 22:00', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, right:30, top: 20),
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
                            Colors.pink[50]!,
                            Colors.pink[50]!,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/barbell.png'),
                            scale: 2,
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:10, top: 25),
                  child: Text("Talep ettiğiniz yeni antrenman programı", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
                  child: Text('hazırlandı, Antrenmanlarında görebilirsin!', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:5, top: 10),
                        child: Icon(
                          Icons.access_time,
                          color:Colors.grey,
                          size:15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:100, top: 10),
                        child: Text('14 Ekim 2021 - 22:00', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                      ),
                    ]
                ),
              ],
            ),

          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, right:0, top: 20),
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
                            Colors.deepOrange,
                            Colors.orange,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/elmas.png'),
                            scale: 2,
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 25),
                  child: Text("Premium'unuzun süresi bitti. Hemen", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:80, top: 0),
                  child: Text('Yenilemek için tıklayın.', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, bottom:20, right:5, top: 10),
                        child: Icon(
                          Icons.access_time,
                          color:Colors.grey,
                          size:15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:100, top: 10),
                        child: Text('14 Ekim 2021 - 22:00', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 0),
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, right:30, top: 20),
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
                            Colors.deepPurple,
                            Colors.deepPurple,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Yemeksepeti.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  )
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:27, top: 25),
                  child: Text("Banabi'de 1 hafta boyunca sporcu", style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
                  child: Text('ürünlerinde geçerli %20 indiriminiz var!', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:5, top: 10),
                        child: Icon(
                          Icons.access_time,
                          color:Colors.grey,
                          size:15,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom:20, right:80, top: 10),
                        child: Text('14 Ekim 2021 - 22:00', style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget buildSheet3() => Container(
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

Widget buildSheet4() => Container(
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
        children: [
          Padding(
            padding: EdgeInsets.only(left:0, bottom:20, right:0, top: 30),
          child: Container(
            height: 100.0,
            width: 100.0,
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
                  image: AssetImage('assets/pp.png'),
                  scale: 2,
                ),
              ),
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
            child: Text("Antrenmana başlamadan önce", style: TextStyle(color:Colors.black, fontSize: 18.0),),
          ),
          Padding(
            padding: EdgeInsets.only(left:0, bottom:20, right:0, top: 0),
            child: Text("profilini oluşturman gerekiyor.", style: TextStyle(color:Colors.black, fontSize: 18.0),),
          ),
          Padding(
            padding: EdgeInsets.only(left:0, bottom:20, right:0, top: 0),
            child: Text("Bu işlem sadece bir kaç dakikanı alacak.", style: TextStyle(color:Colors.grey, fontSize: 16.0),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0, bottom: 20, right:0, top:0),
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
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Center(
                      child: Text('PROFİLİNİ OLUŞTURMAYA BAŞLA', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    ),
                  ),
                )
            ),
          ),
        ],
      )
);

