import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship_app/constants/color_constant.dart';
import 'package:internship_app/widgets/body_screen.dart';
import 'package:internship_app/widgets/bottom_navigation_app.dart';
import './profile.dart';
class HomeScreen extends StatefulWidget {
  


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  



  @override
  Widget build(BuildContext context) {

    void ReplaceProfile(){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
    }



    return Scaffold(
      //setting up all AppBar Content
      appBar: AppBar(
        foregroundColor: Colors.blueAccent,
        backgroundColor: mBackgroundColor,
        actions: [
          IconButton(onPressed:() => ReplaceProfile(), icon: const Icon(Icons.person,color: Colors.blue,))
          
        ],
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      body: Bodyscreen(),
      bottomNavigationBar: CurvedNavigationApp(),
    );
  }
}