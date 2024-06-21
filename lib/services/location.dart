import 'package:geolocator/geolocator.dart';

class Location {

  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permissions = await Geolocator.checkPermission();
      if (permissions == LocationPermission.denied) {
      LocationPermission permission = await Geolocator.requestPermission();
      permission;
      }
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      this.latitude = position.latitude;
      this.longitude = position.longitude;
    }
    catch (e) {
      print(e);
      
    }
  }
}

