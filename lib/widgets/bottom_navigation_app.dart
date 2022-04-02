import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:internship_app/constants/color_constant.dart';

class CurvedNavigationApp extends StatefulWidget {
  

  

  @override
  _CurvedNavigationAppState createState() =>
      _CurvedNavigationAppState();
}

class _CurvedNavigationAppState extends State<CurvedNavigationApp> {
  get bottomNavigationBar => null;
  int index = 2;

  //int _selectedIndex = 0;

  // bottomTextStyle =
      //GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  //void _onItemTapped(int index) {
    //setState(() {
      //_selectedIndex = index;
    //});
  //}

  @override
  Widget build( BuildContext context ) {
    final items = <Widget>[
      Icon(Icons.border_color_rounded, size: 25),
      Icon(Icons.access_time, size: 25),
      Icon(Icons.home, size: 25),
      Icon(Icons.menu_book_rounded, size: 25),
      Icon(Icons.double_arrow_rounded, size: 25),
    ];
    return CurvedNavigationBar(
        height: 47,
        index: index,
        items: items,
        backgroundColor: Color.fromARGB(255, 218, 239, 241),
        animationCurve: Interval(0.001, 0.4),
        
        );
    }
}