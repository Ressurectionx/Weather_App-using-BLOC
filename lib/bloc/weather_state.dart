part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable{}


class LoadingState extends WeatherState{
  LoadingState();
  @override
  List<Object?> get props => [];
}

class SuccessState extends WeatherState{
  SuccessState(this._weather);
  Weather get getWeather => _weather as Weather;
  @override
  List<Object?> get props => [_weather];
  final _weather;

}

class ErrorState extends WeatherState{
  String error;
  ErrorState(this.error);
  @override
  List<Object?> get props => [];
}