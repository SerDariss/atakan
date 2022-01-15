import 'package:atakan/Screens/Antrenman/antrenman.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPage createState() => _VideoPage();
}

class _VideoPage extends State<VideoPage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: SizedBox.expand(
          child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.deepOrange,
                Colors.orange,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.zero),
          ),
            child: Column(
              children: [
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:5, bottom:30, right:65, top:70),
                        child: Builder( builder:(context) => Container(
                          child: IconButton(
                            onPressed: (){
                                Get.to(AntrenmanPage());
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color:Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:30, right:65, top:70),
                        child: Text('ANTRENMANIM', style: TextStyle(color: Colors.white, fontSize: 21.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:30, right:0, top:70),
                        child: Builder( builder:(context) => Container(
                          child: IconButton(
                            onPressed: (){;
                            },
                            icon: Icon(
                              Icons.info_outline,
                              color:Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                        ),
                      ),
                    ]
                ),
                Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:611.200),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/önizleme.png'),
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
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      );
}