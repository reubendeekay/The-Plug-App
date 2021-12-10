import 'package:the_plug/providers/location_provider.dart';
import 'package:the_plug/screens/map_overview/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapOverviewScreen extends StatefulWidget {
  const MapOverviewScreen({Key? key}) : super(key: key);

  @override
  State<MapOverviewScreen> createState() => _MapOverviewScreenState();
}

class _MapOverviewScreenState extends State<MapOverviewScreen> {
  GoogleMapController? mapController;
  Set<Marker> _markers = {};
  BitmapDescriptor? _markerIcon;

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    mapController!.setMapStyle(value);

    setState(() {
      _markers.addAll([
        Marker(
          markerId: const MarkerId('1'),
          onTap: () {},
          icon: _markerIcon!,
          position: const LatLng(-3.2192, 40.1169),
          infoWindow: const InfoWindow(title: 'Cleaner'),
        ),
        Marker(
          markerId: const MarkerId('2'),
          onTap: () {},
          icon: _markerIcon!,
          position: const LatLng(-3.2195, 40.1069),
          infoWindow: const InfoWindow(title: 'Cleaner'),
        ),
      ]);
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      setCustomMarker();
    });

    super.initState();
  }

  void setCustomMarker() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(
          size: Size(5, 5),
        ),
        'assets/images/marker.png',
        mipmaps: false);
  }

  @override
  Widget build(BuildContext context) {
    var _locationData =
        Provider.of<LocationProvider>(context, listen: false).locationData;
    LatLng _initialPosition =
        LatLng(_locationData.latitude!, _locationData.longitude!);

    return Scaffold(
      body: Column(
        children: [
          const SearchBarWidget(),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              markers: _markers,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              initialCameraPosition:
                  CameraPosition(target: _initialPosition, zoom: 12),
            ),
          ),
        ],
      ),
    );
  }
}
