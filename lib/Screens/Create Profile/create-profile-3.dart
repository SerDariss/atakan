import 'package:atakan/Components/BottomNavBar2.dart';
import 'package:atakan/Screens/Account/hesabim.dart';
import 'package:atakan/Screens/Create%20Profile/create-profile-2.dart';
import 'package:atakan/Screens/Create%20Profile/create-profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateProfile3 extends StatefulWidget {
  @override
  _CreateProfile3  createState() => _CreateProfile3 ();
}
class _CreateProfile3  extends State<CreateProfile3 > {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Create-Profile-Background.png'),
                fit: BoxFit.fill
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left:120, bottom:0, right:0, top:10),
                child: Container(
                  margin: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                  height: 150,
                  width: 150,
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
                        padding: EdgeInsets.only(left: 0, bottom:0, right:0, top:0),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to(CreateProfile());
                              },
                              child: Container(
                                height: 40.0,
                                width: 100.0,
                                margin: EdgeInsets.only(left:20, bottom:0, right:20, top: 340),
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.grey.withOpacity(0.5),
                                      Colors.grey.withOpacity(0.5),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Center(
                                  child: Text('1. ADIM', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                ),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 0),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to(CreateProfile2());
                              },
                              child: Container(
                                height: 40.0,
                                width: 100.0,
                                margin: EdgeInsets.only(left:0, bottom:0, right:20, top: 340),
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.grey.withOpacity(0.5),
                                      Colors.grey.withOpacity(0.5),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Center(
                                  child: Text('2. ADIM', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                ),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 0),
                        child:Container(
                            child: GestureDetector(
                              onTap: (){
                                Get.to(CreateProfile3());
                              },
                              child: Container(
                                height: 40.0,
                                width: 100.0,
                                margin: EdgeInsets.only(left:0, bottom:0, right:20, top: 340),
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
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
                                child: Center(
                                  child: Text('3. ADIM', style: TextStyle(color: Colors.white, fontSize: 18.0),),
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

  List<Color> _colors = <Color>[
    Colors.white,
    Colors.transparent,
  ];

  int _currentColorIndex = 0;

  void _incrementColorIndex() {
    setState(() {
      if (_currentColorIndex < _colors.length - 1) {
        _currentColorIndex++;
      } else {
        _currentColorIndex = 0;
      }
    });
  }

  List<Color> _colors2 = <Color>[
    Colors.transparent,
    Colors.white,
  ];

  int _currentColorIndex2 = 0;

  void _incrementColorIndex2() {
    setState(() {
      if (_currentColorIndex < _colors.length - 1) {
        _currentColorIndex++;
      } else {
        _currentColorIndex = 0;
      }
    });
  }

  List<bool> isSelected = [true, false];

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
            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 20, right:5, top: 10),
              child: Text('Antrenman??n??z?? nerede yapacaks??n??z?', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
            ),
            Padding(
              padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
              child: Container(
                height: 50.0,
                width: 500.0,
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
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child:Container(
                        margin: EdgeInsets.only(left:5, bottom:0, right:0, top: 0),
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(31.0)),
                          color: _colors[_currentColorIndex],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _incrementColorIndex();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top:10),
                            child: Text(
                              "EV'DE ??ALI??ACA??IM",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                      child:Container(
                        margin: EdgeInsets.only(left:0, bottom:0, right:0, top: 0),
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        height: 40,
                        width: 174,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(31.0)),
                          color: _colors2[_currentColorIndex],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _incrementColorIndex2();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top:10),
                            child: Text(
                              "SALON'DA ??ALI??ACA??IM",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 10, right:5, top: 20),
              child: Text('L??tfen Foto??raflar??n??z?? Y??kleyin', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
                      child:Container(
                          child: GestureDetector(
                            onTap: (){
                              Get.to(CreateProfile3());
                            },
                            child: Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepOrange[100]!,
                                    Colors.deepOrange[100]!,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color:Colors.deepOrange,
                                    size: 20.0,
                                  ),
                              ),
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 10, right:15, top: 10),
                      child: Text('??N', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
                      child:Container(
                          child: GestureDetector(
                            onTap: (){
                              Get.to(CreateProfile3());
                            },
                            child: Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepOrange[100]!,
                                    Colors.deepOrange[100]!,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color:Colors.deepOrange,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 10, right:15, top: 10),
                      child: Text('ARKA', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
                      child:Container(
                          child: GestureDetector(
                            onTap: (){
                              Get.to(CreateProfile3());
                            },
                            child: Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepOrange[100]!,
                                    Colors.deepOrange[100]!,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color:Colors.deepOrange,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 10, right:15, top: 10),
                      child: Text('YAN', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0, right:12, top: 10),
                      child:Container(
                          child: GestureDetector(
                            onTap: (){
                              Get.to(CreateProfile3());
                            },
                            child: Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepOrange[100]!,
                                    Colors.deepOrange[100]!,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color:Colors.deepOrange,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 10, right:15, top: 10),
                      child: Text('PROF??L', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
          child:Container(
              child: GestureDetector(
                onTap: (){
                  Get.to(BottomNavBar2());
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
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, bottom: 0, right:140, top: 0),
                        child: Text('PROF??L??M?? OLU??TUR', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0 , bottom: 0, right:0, top: 0),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color:Colors.white,
                          size: 20.0,
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
  );
}