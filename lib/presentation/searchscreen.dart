/*
import 'package:flutter/material.dart';
import 'package:weatherr_bloc/bloc/weather_bloc.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);


  @override
    Widget build(BuildContext context) {
      TextEditingController city_controller = new TextEditingController();
      return Scaffold(
          body: Stack(
              children: [
                Positioned(
                  left: MediaQuery
                      .of(context)
                      .size
                      .width * 0.07,
                  top: MediaQuery
                      .of(context)
                      .size
                      .height * 0.3,
                  child: Container(
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.shade700, width: 1.2),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Row(children: [
                        SizedBox(
                          width: 245,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0),
                            child: TextFormField(
                              controller: city_controller,
                              decoration: const InputDecoration(
                                isCollapsed: true,
                                border: InputBorder.none,
                                hintText: "search by keyword or product name",
                              ),
                            ),
                          ),
                        ),
                        IconButton(onPressed: () {
                          // final weatherbloc=context.read<WeatherBloc>();
                           final bloc=WeatherBloc();
                           bloc.add(GetWeather(city_controller.text));
                        },
                            icon: const Icon(
                                Icons.search, color: Colors.black54))
                      ],)
                  ),
                ),
              ]
          )
      );
    }
  }
    */