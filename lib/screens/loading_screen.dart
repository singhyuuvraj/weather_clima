import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
   const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {



   @override
   void initState(){
     super.initState();
     getLocationData();
   }
  void getLocationData() async{
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>  LocationScreen(locationWeather: weatherData,)
    ));
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitWaveSpinner(
          color: Colors.lightBlueAccent,
          waveColor: Colors.blue,
        ),
      ),
    );
  }
}
// var longitude = jsonDecode(data)["coord"]['lon'];
// var weatherDescription = jsonDecode(data)["weather"][0]["description"];