import 'package:atakan/Screens/Beslenme/beslenme_screen.dart';
import 'package:atakan/Screens/Create%20Profile/create-profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Screens/Login/login_screen.dart';
import 'package:atakan/Screens/Register/register_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegisterPage2 extends StatefulWidget {
  @override
  _RegisterPage2 createState() => _RegisterPage2();
}
class _RegisterPage2 extends State<RegisterPage2> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Login-Register-Background.png'),
                fit: BoxFit.fill
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left:100, bottom:0, right:0, top:90),
                child: Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 200,
                  width: 200,
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
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:75, bottom: 0, right:0, top:470),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {},
                          child: GradientText(
                            'ONAY KODUNU GİRİN',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                            colors: [
                              Colors.deepOrange,
                              Colors.orange,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10, right:10, top: 5),
                child: SizedBox(
                  width: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey),
                      )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:10, top: 5),
                child: SizedBox(
                  width: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:10, top: 5),
                child: SizedBox(
                  width: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:10, top: 5),
                child: SizedBox(
                  width: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:10, top: 5),
                child: SizedBox(
                  width: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child: SizedBox(
                  width: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
            child:Container(
                child: GestureDetector(
                  onTap: (){
                    Get.to(CreateProfile());
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
                      child: Text('KAYDI TAMAMLA', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    ),
                  ),
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
            child:Container(
                child: GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                    height: 50.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Center(
                      //timer eklenecek
                      child: Text('YENİ KOD GÖNDER  (0:35) ', style: TextStyle(color: Colors.grey, fontSize: 18.0),
                      ),
                    ),
                  ),
                )
            ),
          ),
        ],
      )
  );
}