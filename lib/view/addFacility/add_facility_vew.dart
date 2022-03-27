import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/view/auth/widgets/custom_elevated_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AddFacilityView extends StatelessWidget {
  const AddFacilityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomElevatedButton(
            onPressed: () {
              context.router.push(QRScannerView());
            },
            child: Text('Scan the barcode in your facility'),
          ),
        ],
      ),
    );
  }
}
