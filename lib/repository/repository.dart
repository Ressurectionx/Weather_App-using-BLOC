
import 'dart:convert';

import 'package:weatherr_bloc/model/model.dart';
import 'package:http/http.dart' as http;


class Weather_Repo{
 static Future<Weather> getApi() async{
   Map<String, String> queryParams = {
     'q': 'kolhapur',
   };
   var ur=Uri(
      host: "weatherapi-com.p.rapidapi.com",
      scheme: "https",
       path: "/current.json",
       queryParameters: queryParams);
             final response=await http.get(
               ur,
               headers: {
                 'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com',
                 'x-rapidapi-key': 'ab68db8d09msh2a9ee72e54f4468p177d30jsn32113fd3e6d2'
               }
             );
           var data=response.body;
           var model=json.decode(data.toString());
           Weather weath=Weather.fromJson(model);
          return weath;
  }
}