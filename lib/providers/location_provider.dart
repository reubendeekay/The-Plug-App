import 'package:flutter/foundation.dart';
import 'package:location/location.dart';

class LocationProvider with ChangeNotifier {
  LocationData? _locationData;
  LocationData get locationData {
    return _locationData!;
  }

  Future<void> getCurrentLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();

      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    // location.onLocationChanged.listen((LocationData currentLocation) {
    //   _locationData = currentLocation;
    // });

    notifyListeners();
  }
}
