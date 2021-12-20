part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent extends Equatable {}

class GetWeather extends WeatherEvent{
  @override
  List<Object?> get props => [];
}

class Searched extends WeatherEvent{
  @override
  List<Object?> get props => [];
}