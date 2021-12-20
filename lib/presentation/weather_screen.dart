import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherr_bloc/bloc/weather_bloc.dart';
import 'package:weatherr_bloc/model/model.dart';
import 'package:weatherr_bloc/model/weather.dart';
import 'package:weatherr_bloc/presentation/searchscreen.dart';
import 'package:weatherr_bloc/presentation/widgets/weatherempty.dart';
import 'package:weatherr_bloc/presentation/widgets/weathererror.dart';
import 'package:weatherr_bloc/presentation/widgets/weatherloading.dart';
import 'package:weatherr_bloc/presentation/widgets/weatherpopulated.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}
class _WeatherScreenState extends State<WeatherScreen> {
  @override

  void initState(){
    setState((){
      super.initState();
      context.read<WeatherBloc>().add(GetWeather());
    });
  }
  Widget build(BuildContext context) {
    TextEditingController _controller=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title:const Text("Weather Forecast"),
        actions:  [
         IconButton(onPressed: (){
         Navigator.push(context,
             MaterialPageRoute(builder: (context)=>WeatherScreen()));
         }, icon: const Icon(Icons.search)),
          const SizedBox(width:20),
        ],
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc,WeatherState>(
            builder: (context,state){
              context.read<WeatherBloc>().add(GetWeather());
               if(state is LoadingState){
                return const WeatherLoading();
              }
              else if(state is SuccessState){
               Weather weather=state.getWeather;
                return  WeatherPopulated(weather);
              }
              else if(state is ErrorState){
                return  const WeatherError();
              }
              return const WeatherEmpty();
            }),

      ),
    );
  }
}