import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerView extends StatelessWidget {
  const QRScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MobileScanner(
            allowDuplicates: false,
            controller: MobileScannerController(
              facing: CameraFacing.back,
              torchEnabled: true,
            ),
            onDetect: (barcode, args) {
              final String? code = barcode.rawValue;
              debugPrint('Barcode found! $code');
              context.router.replace(AddFacilityView());
            }),
      ),
    );
  }
}
