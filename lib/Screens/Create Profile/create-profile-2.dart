import 'package:atakan/Screens/Create%20Profile/create-profile-3.dart';
import 'package:atakan/Screens/Create%20Profile/create-profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateProfile2 extends StatefulWidget {
  @override
  _CreateProfile2  createState() => _CreateProfile2 ();
}
class _CreateProfile2  extends State<CreateProfile2 > {
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
                                margin: EdgeInsets.only(left:20, bottom:0, right:20, top: 210),
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
                                margin: EdgeInsets.only(left:0, bottom:0, right:20, top: 210),
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
                                margin: EdgeInsets.only(left:0, bottom:0, right:20, top: 210),
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

  List<Color> _colors3 = <Color>[
    Colors.white,
    Colors.transparent,
  ];

  int _currentColorIndex3 = 0;

  void _incrementColorIndex3() {
    setState(() {
      if (_currentColorIndex3< _colors.length - 1) {
        _currentColorIndex3++;
      } else {
        _currentColorIndex3= 0;
      }
    });
  }

  List<Color> _colors4 = <Color>[
    Colors.transparent,
    Colors.white,
  ];

  int _currentColorIndex4 = 0;

  void _incrementColorIndex4() {
    setState(() {
      if (_currentColorIndex3< _colors.length - 1) {
        _currentColorIndex3++;
      } else {
        _currentColorIndex3= 0;
      }
    });
  }

  List<Color> _colors5 = <Color>[
    Colors.white,
    Colors.transparent,
  ];

  int _currentColorIndex5 = 0;

  void _incrementColorIndex5() {
    setState(() {
      if (_currentColorIndex5< _colors.length - 1) {
        _currentColorIndex5++;
      } else {
        _currentColorIndex5= 0;
      }
    });
  }

  List<Color> _colors6 = <Color>[
    Colors.transparent,
    Colors.white,
  ];

  int _currentColorIndex6 = 0;

  void _incrementColorIndex6() {
    setState(() {
      if (_currentColorIndex5< _colors.length - 1) {
        _currentColorIndex5++;
      } else {
        _currentColorIndex5= 0;
      }
    });
  }

  List<Color> _colors7 = <Color>[
    Colors.white,
    Colors.transparent,
  ];

  int _currentColorIndex7 = 0;

  void _incrementColorIndex7() {
    setState(() {
      if (_currentColorIndex7< _colors.length - 1) {
        _currentColorIndex7++;
      } else {
        _currentColorIndex7= 0;
      }
    });
  }

  List<Color> _colors8 = <Color>[
    Colors.transparent,
    Colors.white,
  ];

  int _currentColorIndex8 = 0;

  void _incrementColorIndex8() {
    setState(() {
      if (_currentColorIndex7< _colors.length - 1) {
        _currentColorIndex7++;
      } else {
        _currentColorIndex7= 0;
      }
    });
  }

  List<Color> _colors9 = <Color>[
    Colors.white,
    Colors.transparent,
  ];

  int _currentColorIndex9 = 0;

  void _incrementColorIndex9() {
    setState(() {
      if (_currentColorIndex9< _colors.length - 1) {
        _currentColorIndex9++;
      } else {
        _currentColorIndex9= 0;
      }
    });
  }

  List<Color> _colors10 = <Color>[
    Colors.transparent,
    Colors.white,
  ];

  int _currentColorIndex10 = 0;

  void _incrementColorIndex10() {
    setState(() {
      if (_currentColorIndex9< _colors.length - 1) {
        _currentColorIndex9++;
      } else {
        _currentColorIndex9= 0;
      }
    });
  }

  List<Color> _colors11 = <Color>[
    Colors.white,
    Colors.transparent,
  ];

  int _currentColorIndex11 = 0;

  void _incrementColorIndex11() {
    setState(() {
      if (_currentColorIndex11< _colors.length - 1) {
        _currentColorIndex11++;
      } else {
        _currentColorIndex11= 0;
      }
    });
  }

  List<Color> _colors12 = <Color>[
    Colors.transparent,
    Colors.white,
  ];

  int _currentColorIndex12 = 0;

  void _incrementColorIndex12() {
    setState(() {
      if (_currentColorIndex11< _colors.length - 1) {
        _currentColorIndex11++;
      } else {
        _currentColorIndex11= 0;
      }
    });
  }


  List<bool> isSelected = [true, false];
  List<bool> isSelected2 = [true, false];
  List<bool> isSelected3 = [true, false];
  List<bool> isSelected4 = [true, false];
  List<bool> isSelected5 = [true, false];
  List<bool> isSelected6 = [true, false];

  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
  initialChildSize:0.65,
  builder: (_, controller) => Container(
    padding: EdgeInsets.all(15),
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
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                  height: 140.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Text('Spor yapmanıza engel olacak herhangi bir', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                        child: Text('rahatsızlık yaşadınız mı ?', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 250.0,
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
                                  width: 120,
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
                                        "EVET",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                                  width: 120,
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
                                        "HAYIR",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom:0, right:0, top: 5),
                child:Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                        ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                        child: Text('Düzenli kullandığınız ilaç var mı ?', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 250.0,
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
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors3[_currentColorIndex3],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex3();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "EVET",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors4[_currentColorIndex3],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex4();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "HAYIR",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top:0),
                child:Container(
                  height: 70.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 5, right:0, top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Lütfen yazınız.',
                    ),
                  ),
                ),
                ]
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                  height: 130.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Text('Beslenme düzeninizi etkileyecek alerjik bir', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                        child: Text('rahatsızlığınız var mı ?', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 250.0,
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
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(31.0)),
                            color: _colors5[_currentColorIndex5],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _incrementColorIndex5();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top:10),
                              child: Text(
                                "EVET",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
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
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(31.0)),
                            color: _colors6[_currentColorIndex5],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _incrementColorIndex6();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top:10),
                              child: Text(
                                "HAYIR",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                        child: Text('Sigara / Alkol kullanıyor musunuz ?', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 250.0,
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
                          child:Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                child:Container(
                                  margin: EdgeInsets.only(left:5, bottom:0, right:0, top: 0),
                                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors7[_currentColorIndex7],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex7();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "EVET",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors8[_currentColorIndex7],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex8();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "HAYIR",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                        child: Text('Spor geçmişiniz var mı ?', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 250.0,
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
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors9[_currentColorIndex9],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex9();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "EVET",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors10[_currentColorIndex9],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex10();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "HAYIR",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:10, right:0, top:0),
                        child: Text('Çalışma şekliniz ?', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 250.0,
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
                          child:  Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                child:Container(
                                  margin: EdgeInsets.only(left:5, bottom:0, right:0, top: 0),
                                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors11[_currentColorIndex11],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex11();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "AKTİF",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(31.0)),
                                    color: _colors12[_currentColorIndex11],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      _incrementColorIndex12();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text(
                                        "PASİF",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                        child: Text('Yaşadığınız İl / İlçe ', style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, bottom: 0, right:10, top: 10),
                            child:Container(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to;
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.deepOrange,
                                          Colors.deepOrange,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, bottom: 0, right:5, top: 0),
                                        child: Text('Türkiye', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left:0 , bottom: 0, right:0, top: 0),
                                          child: Icon(
                                            Icons.keyboard_arrow_down_rounded,
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
                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
                            child:Container(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to;
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.deepOrange,
                                          Colors.deepOrange,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, bottom: 0, right:5, top: 0),
                                          child: Text('İstanbul', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left:0 , bottom: 0, right:0, top: 0),
                                          child: Icon(
                                            Icons.keyboard_arrow_down_rounded,
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
                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 10),
                            child:Container(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to;
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.deepOrange,
                                          Colors.deepOrange,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15, bottom: 0, right:5, top: 0),
                                          child: Text('Kadıköy', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left:0 , bottom: 0, right:0, top: 0),
                                          child: Icon(
                                            Icons.keyboard_arrow_down_rounded,
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 20, right:0, top:5),
                child:Container(
                  height: 120.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 5, right:0, top: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Kendiniz hakkında vermek istediğiniz başka bilgi varsa giriniz....',
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
                child:Container(
                    child: GestureDetector(
                      onTap: (){
                        Get.to(CreateProfile3());
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
                              padding: EdgeInsets.only(left: 30, bottom: 0, right:160, top: 0),
                              child: Text('SONRAKİ ADIM', style: TextStyle(color: Colors.white, fontSize: 16.0),),
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
      ],
    ),
  ),
  );
}