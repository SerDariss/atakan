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
              child: Text('Antrenmanınızı nerede yapacaksınız?', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
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
                                  margin: EdgeInsets.only(left:20, bottom:0, right:0, top: 0),
                                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                  height: 20,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  child: Text("EV'DE ÇALIŞACAĞIM", style: TextStyle(fontSize: 14.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:10, bottom:0, right:5, top:0),
                                child:Container(
                                  margin: EdgeInsets.only(left:5, bottom:0, right:0, top: 0),
                                  padding: EdgeInsets.only(left:0, bottom:0, right:0, top:0),
                                  height: 20,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                  ),
                                  child: Text("SALON'DA ÇALIŞACAĞIM", style: TextStyle(fontSize: 14.0),
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
            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 10, right:5, top: 20),
              child: Text('Lütfen Fotoğraflarınızı YÜkleyin', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
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
                      child: Text('ÖN', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
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
                      child: Text('PROFİL', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
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
                  Get.to(HesabimPage());
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
                        child: Text('PROFİLİMİ OLUŞTUR', style: TextStyle(color: Colors.white, fontSize: 16.0),),
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