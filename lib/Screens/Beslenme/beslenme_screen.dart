import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:atakan/Screens/Beslenme/beslenme_screen_2.dart';
import 'package:atakan/Screens/Beslenme/guidence-2.dart';
import 'package:atakan/Screens/Canl%C4%B1%20Yay%C4%B1n/canl%C4%B1_yay%C4%B1n_takvimi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeslenmePage extends StatefulWidget {
  @override
  _BeslenmePage createState() => _BeslenmePage();
}

class _BeslenmePage extends State<BeslenmePage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: Container(
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
                padding: EdgeInsets.only(left:155, bottom:0, right:0, top:180),
                child: Text("BESLENME", style: TextStyle(color: Colors.white, fontSize: 18.0),),
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
                   padding: EdgeInsets.only(left:10 , bottom:10, right:15, top:10),
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
                   padding: EdgeInsets.only(left:0, bottom:10, right:0, top:10),
                   child:Container(
                         child: Container(
                           height: 60.0,
                           width: 200.0,
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
                             child: Text('SABAH', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                           ),
                         ),
                   ),
                 ),
                 Flexible(
                   flex: 1,
                   fit: FlexFit.loose,
                 child: Padding(
                   padding: EdgeInsets.only(left: 15, bottom:10, right:0, top:10),
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
             Stack(
               children: [
             Padding(
               padding: EdgeInsets.only(left:0, bottom:10, right:0, top: 15),
             child: Container(
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.centerLeft,
                   end: Alignment.centerRight,
                   colors: [
                     Colors.lightBlueAccent,
                     Colors.lightBlueAccent,
                   ],
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(15.0)),
               ),
               child: Row(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left: 80, bottom:10, right:50, top: 10),
                   child: Text('MİNİMUM SU TÜKETİMİ', style: TextStyle(color: Colors.white, fontSize: 13.0),),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 0, bottom:10, right:0, top:10),
                     padding: EdgeInsets.only(left:0, bottom:10, right:0, top: 10),
                     height:40,
                     width: 80,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight,
                         colors: [
                           Colors.lightBlue,
                           Colors.lightBlue,
                         ],
                       ),
                       borderRadius: BorderRadius.all(Radius.circular(13.0)),
                     ),
                     child: new Text("2 LİTRE", style: TextStyle(color: Colors.white, fontSize: 15.0),),
                   ),
                 ],
               ),
             ),
             ),
                 Padding(
                   padding: EdgeInsets.only(left:10, bottom:0, right:0, top:5),
                   child: Container(
                     margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                     padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                     height: 60,
                     width: 60,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage('assets/su.png'),
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
               ]
             ),
             Container(
               margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:9),
               padding: EdgeInsets.only(left: 5, bottom:10, right:5, top: 10),
               height: 100,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.centerLeft,
                   end: Alignment.centerRight,
                   colors: [
                     Colors.indigo[50]!,
                     Colors.indigo[50]!,
                   ],
                 ),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                 ),
               ),
               child: Stack(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left:100, bottom:0, right:0, top:15),
                     child: Text('1 Yumutra (50g)', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                   ),
                   Padding(
                       padding: EdgeInsets.only(left:20, bottom:0, right:0, top:35),
                     child: Container(
                       height: 50.0,
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
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       ),
                       child: Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:80, bottom:0, right:10, top:10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(width:0.5,color:Colors.grey,),
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
                             child: Column(
                               children: [
                                 Text("77.5", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Kalori", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:5, bottom:0, right:5, top:10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(width:0.3,color:Colors.grey,),
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
                             child: Column(
                               children: [
                                 Text("77.5", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Karbonhidrat", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:15, bottom:0, right:15, top:10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(width:0.3,color:Colors.grey,),
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
                             child: Column(
                               children: [
                                 Text("5.31", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Yağ", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:5, bottom:0, right:0, top:10),
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
                                 topRight: Radius.circular(15),
                                 bottomRight: Radius.circular(15),
                               ),
                             ),
                             child: Column(
                               children: [
                                 Text("6.29", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Protein", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                     child: Container(
                       margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                       padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                       height: 100,
                       width: 85,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('assets/Beslenme-Yumurta.png'),
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
                 ],
               ),
             ),
             Container(
               margin: EdgeInsets.only(left: 0, bottom:0, right:0, top:1),
               padding: EdgeInsets.only(left: 5, bottom:10, right:5, top: 10),
               height: 100,
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.centerLeft,
                   end: Alignment.centerRight,
                   colors: [
                     Colors.indigo[50]!,
                     Colors.indigo[50]!,
                   ],
                 ),
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(20),
                   bottomRight: Radius.circular(20),
                 ),
               ),
               child: Stack(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left:100, bottom:0, right:0, top:3),
                     child: Text('1 Kibrit kutusu büyüklüğünde', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left:100, bottom:0, right:0, top:15),
                     child: Text('Beyaz Peynir (50g)', style: TextStyle(color: Colors.black, fontSize: 13.0),),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left:20, bottom:0, right:0, top:35),
                     child: Container(
                       height: 50.0,
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
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       ),
                       child: Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:80, bottom:0, right:10, top:10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(width:0.5,color:Colors.grey,),
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
                             child: Column(
                               children: [
                                 Text("77.5", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Kalori", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:5, bottom:0, right:5, top:10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(width:0.3,color:Colors.grey,),
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
                             child: Column(
                               children: [
                                 Text("77.5", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Karbonhidrat", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:15, bottom:0, right:15, top:10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               border: Border(
                                 right: BorderSide(width:0.3,color:Colors.grey,),
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
                             child: Column(
                               children: [
                                 Text("5.31", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Yağ", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             padding: EdgeInsets.only(left:5, bottom:0, right:0, top:10),
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
                                 topRight: Radius.circular(15),
                                 bottomRight: Radius.circular(15),
                               ),
                             ),
                             child: Column(
                               children: [
                                 Text("6.29", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                                 Text("Protein", style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                     child: Container(
                       margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                       padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                       height: 100,
                       width: 85,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('assets/Beslenme-Peynir.png'),
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
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 20),
               child:Container(
                   child: GestureDetector(
                     onTap: (){
                       Get.to(GuidencePage2());
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
                                     image: AssetImage('assets/help.png'),
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
                           Text('BESLENME UZMANINA DANIŞ', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                           Padding(
                             padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                             child:  Container(
                                 margin: EdgeInsets.only(left:10, bottom:9, right:0, top:9),
                                 padding: EdgeInsets.only(left: 5, bottom:10, right:5, top: 10),
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
                                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                 ),
                                 child: Row(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left:5, bottom:0, right:5, top:0),
                                       padding: EdgeInsets.only(left:5, bottom:0, right:5, top: 5),
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
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left:0, bottom:0, right:5, top:0),
                                       child: Text("ONLINE", style: TextStyle(color: Colors.green, fontSize: 12.0),),
                                     ),
                                   ],
                                 )
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
               ),
             ),
             ]
            ),
         ]
      ),
      );
}