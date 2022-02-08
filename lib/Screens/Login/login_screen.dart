import 'package:atakan/Components/BottomNavBar.dart';
import 'package:atakan/Components/NavBar.dart';
import 'package:atakan/Screens/Create%20Profile/create-profile.dart';
import 'package:atakan/Screens/Home/Home.dart';
import 'package:atakan/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:timer_count_down/timer_count_down.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.blue,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
      ),
      home : MyHomePage(swap: false),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final bool swap;

  MyHomePage({Key? key, required this.swap}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  bool swap = false;

  @override
  void initState() {
    swap = widget.swap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var buttonTile = new ListTile(
      title: new TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () {
          setState(() {
            swap = !swap;
          });
        },
        child: Text(
          '',
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
      ),
    );

    Widget swapWidget;
    if (swap) {
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

      swapWidget = new Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 15),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350, height: 48),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
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
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      labelText: 'Ad, Soyad',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 15),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350, height: 48),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
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
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      labelText: 'E-posta Adresi',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 15),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350, height: 48),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
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
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      labelText: 'Telefon Numarası',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 15),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350, height: 48),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
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
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      labelText: 'Parola',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 0, right: 15, top: 15),
                child: Container(
                    child: GestureDetector(
                      onTap: () {
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
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5, bottom: 0, right: 0, top: 0),
                            child: buildCheckbox(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 0),
                            child: Text(
                              'Kullanım şartlarını',
                              style: TextStyle(color: Colors.deepOrange, fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
                            child: Text(
                              'kabul ediyorum.',
                              style: TextStyle(color: Colors.grey, fontSize: 16.0),
                            ),
                          ),
                        ]),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 20, right: 15, top: 15),
                child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            Container(
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
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 80, bottom:0, right:10, top:0),
                                                  child: Text('YENİ KOD GÖNDER', style: TextStyle(color: Colors.grey, fontSize: 18.0),),
                                                ),
                                                Countdown(
                                                  seconds: 50,
                                                  build: (_, double time) => Text(
                                                    time.toString(),
                                                    style: TextStyle(color: Colors.grey, fontSize: 18.0),
                                                  ),
                                                  interval: Duration(milliseconds: 1000),
                                                  onFinished: (){
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                      SnackBar(
                                                        content: Text('Zamanın doldu!'),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                        );
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
                          child: Text(
                            'KAYIT OL',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ));
    } else {
      swapWidget = new Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
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
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      labelText: 'Telefon Numarası',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 15),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 350),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
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
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      labelText: 'Parola',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 5),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ŞİFRENİ Mİ UNUTTUN?',
                    style: TextStyle(color: Colors.grey, fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 5),
                child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(BottomNavBar());
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
                          child: Text(
                            'GİRİŞ YAP',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ));
    }

    var swapTile = new ListTile(
      title: swapWidget,
    );

    return new Scaffold(
      body: Container(
        width : MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Login-Register-Background.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 0, bottom: 0, right: 0, top:0),
              padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top:0),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'), scale: 1, fit: BoxFit.fill),
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
            Spacer(),
            buttonTile,
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, bottom: 0, right: 0, top:0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      setState(() {
                        swap = !swap;
                      });
                    },
                    child: Text(
                      'KAYIT OL',
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80, bottom: 0, right: 0, top:0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      setState(() {
                        swap = !swap;
                      });
                    },
                    child: GradientText(
                      'GİRİŞ YAP',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                      colors: [
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            swapTile,
          ],
        ),
      ),
    );
  }
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
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 80, bottom:0, right:10, top:0),
                        child: Text('YENİ KOD GÖNDER', style: TextStyle(color: Colors.grey, fontSize: 18.0),),
                      ),
                      Countdown(
                        seconds: 50,
                        build: (_, double time) => Text(
                          time.toString(),
                          style: TextStyle(color: Colors.grey, fontSize: 18.0),
                        ),
                        interval: Duration(milliseconds: 1000),
                        onFinished: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Zamanın doldu!'),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
        ),
      ],
    ),
  );
}