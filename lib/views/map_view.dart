import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_maps/models/map_model.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key, required this.myMap}) : super(key: key);

  final MyMap myMap;

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-33.86, 151.20);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(widget.myMap.name),
        ),
        body: Stack(children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 12.0,
            ),
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: BottomSheet(
                  enableDrag: false,
                  showDragHandle: false,
                  onClosing: () {},
                  builder: (context) {
                    return SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.myMap.name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'This is subtitle text.',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ]));
  }
}
