

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherr_bloc/presentation/weather_screen.dart';
import 'package:weatherr_bloc/repository/repository.dart';

import 'bloc/weather_bloc.dart';

void main(){
    runApp(const WeatherApp());
}
class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primaryColor: Colors.pinkAccent,accentColor: Colors.amber),
       home:BlocProvider<WeatherBloc>(
           create: (context)=>WeatherBloc(Weather_Repo()),
           child:  const WeatherScreen()),
    );
  }
}