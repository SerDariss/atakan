import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Screens/Login/login_screen.dart';
import 'package:atakan/Screens/Register/register_screen_2.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}
class _RegisterPage extends State<RegisterPage> {
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
                        padding: EdgeInsets.only(left:40, bottom: 0, right:0, top:310),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            Get.to(RegisterPage());
                          },
                          child: GradientText(
                            'KAYIT OL',
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
                      Padding(
                        padding: EdgeInsets.only(left: 80, bottom: 0, right:0, top:310),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            Get.to(MyHomePage(swap: false,));
                          },
                          child: Text('GİRİŞ YAP', style: TextStyle(color: Colors.white, fontSize: 22.0),),
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
  bool value = false;
  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 0, right:15, top: 15),
            child :ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 350, height: 48),
              child:TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      child: ImageIcon(
                        AssetImage("assets/per1.png"),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  labelText: 'Ad, Soyad',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 0, right:15, top: 15),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 350, height: 48),
              child:TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      child: ImageIcon(
                        AssetImage("assets/ma1.png"),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  labelText: 'E-posta Adresi',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 0, right:15, top: 15),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 350, height: 48),
              child:TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      child: ImageIcon(
                        AssetImage("assets/tel1.png"),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  labelText: 'Telefon Numarası',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 0, right:15, top: 15),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 350, height: 48),
              child:TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      child: ImageIcon(
                        AssetImage("assets/par1.png"),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  labelText: 'Parola',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 0, right:15, top: 15),
            child:Container(
                child: GestureDetector(
                  onTap: (){
                    Get.to;
                  },
                  child: Container(
                    height: 30.0,
                    width: 350.0,
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
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:5, bottom:0, right:0, top: 0),
                          child: buildCheckbox(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:0, bottom: 0, right:5, top:0),
                          child: Text('Kullanım şartlarını', style: TextStyle(color: Colors.deepOrange, fontSize: 16.0),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:0, bottom: 0, right:0, top:0),
                          child: Text('kabul ediyorum.', style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                        ),
                      ]
                    ),
                  ),
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right:15, top: 15),
            child:Container(
                child: GestureDetector(
                  onTap: (){
                    Get.to(RegisterPage2());
                  },
                  child: Container(
                    height: 45.0,
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
                      child: Text('KAYIT OL', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    ),
                  ),
                )
            ),
          ),
        ],
      )
  );
  Widget buildCheckbox() => Checkbox(
    activeColor: Colors.deepOrange,
    value: value,
    shape: CircleBorder(),
    onChanged: (value) {
      setState(() {
        this.value = value!;
      });
    },
  );
}