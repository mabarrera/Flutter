import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nav_bottom_curve/pages/apple.dart';
import 'package:nav_bottom_curve/pages/google.dart';
import 'package:nav_bottom_curve/pages/instagram.dart';
import 'package:nav_bottom_curve/pages/linux.dart';
import 'package:nav_bottom_curve/pages/twitter.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  //Add page of the navigation
  final PageGoogle _google = new PageGoogle();
  final PageInstagram _instagram = new PageInstagram();
  final PageTwitter _twitter = new PageTwitter();
  final PageLinux _linux = new PageLinux();
  final PageApple _apple = new PageApple();

  Widget _showPage = new PageGoogle();

  Widget _pageChoser(int page){
    switch (page) {
      case 0:
        return _google;
        break;
      case 1:
        return _instagram;
        break;
      case 2:
        return _twitter;
        break;
      case 3:
        return _linux;
        break;
      case 4:
        return _apple;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'No page found',
              style: new TextStyle(fontSize: 30),
            )
          )
        );
    }
  }
  
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(FontAwesomeIcons.google, size: 18, color: Colors.white,),
            Icon(FontAwesomeIcons.instagram, size: 18, color: Colors.white,),
            Icon(FontAwesomeIcons.twitter, size: 18, color: Colors.white,),
            Icon(FontAwesomeIcons.linux, size: 18, color: Colors.white,),
            Icon(FontAwesomeIcons.apple, size: 18, color: Colors.white,),
          ],
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _showPage = _pageChoser(index);
              //_page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
            /*
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
              ],
            ),
            */
          ),
        ));
  }
}