import 'package:atakan/Components/AtakanIcons.dart';
import 'package:atakan/Screens/Account/hesabim.dart';
import 'package:atakan/Screens/Antrenman/antrenman.dart';
import 'package:atakan/Screens/Antrenman/guidence-1.dart';
import 'package:atakan/Screens/Beslenme/beslenme_screen.dart';
import 'package:atakan/Screens/Beslenme/guidence-2.dart';
import 'package:atakan/Screens/Canl%C4%B1%20Yay%C4%B1n/canl%C4%B1_yay%C4%B1n_takvimi.dart';
import 'package:atakan/Screens/Home/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:atakan/Components/NavBar.dart';

class BottomNavBar3 extends StatefulWidget {
  @override
  _BottomNavBar3 createState() => _BottomNavBar3();
}

class _BottomNavBar3 extends State<BottomNavBar3> {

  int _currentIndex =1;

  final screens = [
    HomePage(),
    AntrenmanPage(),
    CanliYayinPage(),
    BeslenmePage(),
    HesabimPage(),
  ];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/home.png"),
              ),
              title: Text('Anasayfa',style: TextStyle(fontSize: 15.0),),
            ),
            BottomNavigationBarItem(
              icon: Icon(AtakanIcons.barbell_2,size:25,),
              title: Text('Antrenman',style: TextStyle(fontSize: 15.0),),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/yay.png"),
              ),
              title: Text('Canlı Yayın',style: TextStyle(fontSize: 15.0),),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/ye.png"),
              ),
              title: Text('Beslenme',style: TextStyle(fontSize: 15.0),),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/pe.png"),
              ),
              title: Text('Hesabım',style: TextStyle(fontSize: 15.0),),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
}