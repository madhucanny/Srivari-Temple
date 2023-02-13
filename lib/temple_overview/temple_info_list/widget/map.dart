import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../controller/dashboard_controller.dart';

class Map extends StatelessWidget {
  final dashboardController = Get.put(DashboardController());
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onCameraIdle: () => true,
        compassEnabled: true,
        mapToolbarEnabled: true,
        rotateGesturesEnabled: true,
        buildingsEnabled: true,
        trafficEnabled: true,
        myLocationEnabled: true,
        zoomGesturesEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
          target: dashboardController.showLocation.value,
          zoom: 15.0,
        ),
        markers: dashboardController.marker(),
        mapType: MapType.normal,
        onMapCreated: (controller) {
          dashboardController.mapController = controller;
        },
      ),
    );
  }

  // Set<Marker> getmarkers() {
  //   setState(() {
  //     markers.add(Marker(
  //       markerId: MarkerId(showLocation.toString()),
  //       position: showLocation,
  //       icon: BitmapDescriptor.defaultMarkerWithHue(
  //         BitmapDescriptor.hueMagenta,
  //       ),
  //     ));
  //   });
  //   return markers;
  // }
}

// import 'package:url_launcher/url_launcher.dart';

// class LaunchMap {
//   LaunchMap._();
//   static Future<void> openMap(
//     double latitude,
//     double longitude,
//   ) async {
//     final API_KEY = "AIzaSyAelYZdfCH7vP7KQwftbOLVg2-esqkNtE0";
//     Uri googleMapUrl = Uri.parse(
//         "https://maps.google.com/maps/search/?api=AIzaSyAelYZdfCH7vP7KQwftbOLVg2-esqkNtE0&query=$latitude,$longitude");
//     ;
//     if (await canLaunchUrl(googleMapUrl)) {
//       await launchUrl(googleMapUrl);
//     } else {
//       throw 'Could Not Open The App';
//     }
//   }
// }
