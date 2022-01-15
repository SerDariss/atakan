import 'package:atakan/Screens/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Screens/Register/register_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:  Colors.blue,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
      ),
      home : MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<MyHomePage> {
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
                        padding: EdgeInsets.only(left:40, bottom: 0, right:0, top:420),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            Get.to(RegisterPage());
                          },
                          child: Text('KAYIT OL', style: TextStyle(color: Colors.white, fontSize: 22.0),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80, bottom: 0, right:0, top:420),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () {
                            Get.to(MyHomePage());
                          },
                          child: GradientText(
                            'GİRİŞ YAP',
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
          padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 10),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 350),
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
          padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 15),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 350),
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
          padding: EdgeInsets.only(left: 0, bottom: 0, right:0, top: 5),
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
            onPressed: () {},
            child: Text('ŞİFRENİ Mİ UNUTTUN?', style: TextStyle(color: Colors.grey, fontSize: 18.0),),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 0, bottom: 10, right:0, top: 5),
          child:Container(
              child: GestureDetector(
                onTap: (){
                  Get.to(HomePage());
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
                    child: Text('GİRİŞ YAP', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                  ),
                ),
              )
          ),
        ),
      ],
    )
    );
}


