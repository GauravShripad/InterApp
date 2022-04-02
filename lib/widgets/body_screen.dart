import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_app/constants/color_constant.dart';
import 'package:internship_app/models/carousel_model.dart';

class Bodyscreen extends StatefulWidget {
  
  @override
  _BodyscreenState createState() => _BodyscreenState();
}

class _BodyscreenState extends State<Bodyscreen> {
  int _current = 0;

  List<T> map<T>(List list,Function handler){
    List<T> result=[];
    for(var i=0;i<list.length;i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
             colors: [
            Colors.white,
            Color.fromARGB(255, 218, 239, 241),
              ],
            )
          ),
          child: Container(
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 16, right: 16)
                ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 15,right: 15),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(onIndexChanged: (index){
                      setState(() {
                        _current = index; 
                      });
                    },
                    autoplay: true,
                    layout: SwiperLayout.DEFAULT,
                    itemCount: carousels.length,
                    itemBuilder: (BuildContext context, index){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(carousels[index].image),
                            fit: BoxFit.cover),
                          ),
                        );
                        },
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                      Row(
                        children: map <Widget>(
                          carousels,
                          (index,image){
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current==index
                              ? mBlueColor
                              : mGreyColor,
                            ),
                          );
                        }
                      ),
                    ),
                    // more
                    Text('More...'),
                      ],
                    ),
                  ],
                ),
              ),
              ],
            ),
          )
        );
  }
}