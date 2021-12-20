import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:weatherr_bloc/model/model.dart';
import 'package:weatherr_bloc/model/weather.dart';
import 'package:weatherr_bloc/repository/repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final Weather_Repo repo;
  WeatherBloc(this.repo) : super(LoadingState()){
    on<GetWeather>((event,emit) async{
      Weather data=await Weather_Repo.getApi();
       emit(SuccessState(data));
    });
  }
}