import 'package:atakan/Screens/Create%20Profile/create-profile-2.dart';
import 'package:atakan/Screens/Create%20Profile/create-profile-3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateProfile extends StatefulWidget {
  @override
  _CreateProfile  createState() => _CreateProfile ();
}
class _CreateProfile  extends State<CreateProfile > {
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
                                margin: EdgeInsets.only(left:20, bottom:0, right:20, top: 310),
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
                                margin: EdgeInsets.only(left:0, bottom:0, right:20, top: 310),
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
                                margin: EdgeInsets.only(left:0, bottom:0, right:20, top: 310),
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
  List<bool> isSelected = [true, false];

  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  int _count2 = 0;

  void _incrementCount2() {
    setState(() {
      _count2++;
    });
  }

  void _decrementCount2() {
    setState(() {
      _count2--;
    });
  }

  int _count3 = 0;

  void _incrementCount3() {
    setState(() {
      _count3++;
    });
  }

  void _decrementCount3() {
    setState(() {
      _count3--;
    });
  }

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
                padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
                child:Container(
                        height: 60.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                            child: Text('Cinsiyet', style: TextStyle(color: Colors.black, fontSize: 18.0),
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:85, bottom:0, right:0, top:0),
                              child: Container(
                                height: 50.0,
                                width: 175.0,
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
                                        padding: EdgeInsets.only(left:8, bottom:0, right:0, top:0),
                                        child:Container(
                                          height: 40,
                                          child: ToggleButtons(
                                            isSelected: isSelected,
                                            selectedColor: Colors.black,
                                            color: Colors.white,
                                            fillColor: Colors.white,
                                            renderBorder: false,
                                            borderRadius:BorderRadius.all(Radius.circular(20.0)),
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                                  child:Container(
                                                    margin: EdgeInsets.only(left:20, bottom:0, right:10, top: 0),
                                                    padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                                    height: 20,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                                    ),
                                                  child: Text('Erkek', style: TextStyle(fontSize: 18.0),
                                                  ),
                                                  ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                                child:Container(
                                                  margin: EdgeInsets.only(left:20, bottom:0, right:10, top: 0),
                                                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                                  height: 20,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                                  ),
                                                  child: Text('Kadın', style: TextStyle(fontSize: 18.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            onPressed: (int newIndex) {
                                              setState(() {
                                                for (int index = 0; index < isSelected.length; index++) {
                                                  if (index == newIndex) {
                                                    isSelected[index] = true;
                                                  } else {
                                                    isSelected[index] = false;
                                                  }
                                                }
                                                },);
                                            }
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
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                        child: Text('Yaş', style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:118, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 175.0,
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
                                padding: EdgeInsets.only(left:5, bottom:0, right:0, top:0),
                              child: Container(
                                child: IconButton(
                                  icon: Icon(Icons.remove),
                                  color: Colors.white,
                                  onPressed: _decrementCount,
                                ),
                              ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 37.0,
                                width: 65.0,
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
                                child: Text("${_count}",style: TextStyle(color: Colors.black, fontSize: 18.0),),
                              ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                  onPressed: _incrementCount,
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
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                        child: Text('Kilo', style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:118, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 175.0,
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
                                padding: EdgeInsets.only(left:5, bottom:0, right:0, top:0),
                                child: Container(
                                  child: IconButton(
                                    icon: Icon(Icons.remove),
                                    color: Colors.white,
                                    onPressed: _decrementCount2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 37.0,
                                  width: 65.0,
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
                                  child: Text("${_count2}",style: TextStyle(color: Colors.black, fontSize: 18.0),),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                  onPressed: _incrementCount2,
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
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:20, bottom:0, right:0, top:0),
                        child: Text('Boy', style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:118, bottom:0, right:0, top:0),
                        child: Container(
                          height: 50.0,
                          width: 175.0,
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
                                padding: EdgeInsets.only(left:5, bottom:0, right:0, top:0),
                                child: Container(
                                  child: IconButton(
                                    icon: Icon(Icons.remove),
                                    color: Colors.white,
                                    onPressed: _decrementCount3,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 37.0,
                                  width: 65.0,
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
                                  child: Text("${_count3}",style: TextStyle(color: Colors.black, fontSize: 18.0),),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                  onPressed: _incrementCount3,
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
                padding: EdgeInsets.only(left: 0, bottom: 0, right:10, top: 10),
                child:Container(
                    child: GestureDetector(
                      onTap: (){
                        Get.to(CreateProfile2());
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
  );
}