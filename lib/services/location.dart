import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Location{

  //Location({required this.latitude, required this.longitude});

  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      longitude = position.longitude;
      latitude = position.latitude;
    }
    catch(e){
      print(e);
    }

  }
}
