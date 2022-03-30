import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppConstant {
  static const String splashImagePath =
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.sgsme.sg%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fpillarboxed_portrait%2Fpublic%2Farticles%2F2019%2F06%2F25%2Fsky_greens_vertical_farm_2.jpg%3Fitok%3Dd-ilQAfs&f=1&nofb=1';

  static const BorderRadius symmetricRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    bottomLeft: Radius.circular(20),
  );
  static const String splashAssetPath = 'assets/logo.png';
  static final CameraPosition initialPosition = CameraPosition(
    target: LatLng(47.4, 30.0),
    zoom: 4.0,
  );

  static const String iconUrl =
      'https://img.icons8.com/ios/344/hydropponics.png';
}
