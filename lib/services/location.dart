//Using geolocator package to get latitude and longitude
import 'package:geolocator/geolocator.dart';

class Location{
  double? latitude;
  double? longitude;
Future<void> getCurrentLocation() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();// get device permissiion
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low);// get latitute, longitude using geolocator
  latitude = position.latitude;
  longitude = position.longitude;
}
}