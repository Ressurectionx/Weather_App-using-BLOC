import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherr_bloc/model/model.dart';
import 'package:weatherr_bloc/model/weather.dart';

import '../../main.dart';
import '../weather_screen.dart';

class WeatherPopulated extends StatelessWidget {
  Weather weather;
  WeatherPopulated(this.weather);
  @override                                                   
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          SizedBox(
            height: 800,
            width: 300,
            child: FutureBuilder<Weather>(
                builder: (context,snapshot){
              return ListView.builder(itemBuilder: (context,index){
                 return Column(
                   children: [
                     Text(weather.location.name.toString(),style: GoogleFonts.gaegu(textStyle:
                     const TextStyle(fontSize: 36,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing: 1.5))),
                     const SizedBox(height:25),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text("12/20/2021",style: GoogleFonts.gaegu(textStyle:
                         const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing: 1.5))),
                         const SizedBox(width:25),
                         Text("10.25 AM",style: GoogleFonts.gaegu(textStyle:
                         const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing: 1.5))),
                       ],),
                     const SizedBox(height:50),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text("Humidity: " + weather.current.humidity.toString(),style: GoogleFonts.gaegu(textStyle:
                         const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing: 1.5))),
                         Text("Cloud: " + weather.current.cloud.toString(),style: GoogleFonts.gaegu(textStyle:
                         const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing: 1.5))),
                         Text("UV: " + weather.current.uv.toString(),style: GoogleFonts.gaegu(textStyle:
                         const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87,letterSpacing: 1.5))),

                       ],)
                   ],
                 );
              });
            }),
          )
          
          




        ],
      ),
    );
  }
}