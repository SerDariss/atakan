import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'antrenman.dart';


class VideoPage extends StatefulWidget {
  VideoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'IFgZ0O2nwgI', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ));

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

                  YoutubePlayer(
                    aspectRatio: 16/9,
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.blueAccent,
                  ),

                  SizedBox(height: 30,),
                ]
            ),
          ),
        ),
      );
}