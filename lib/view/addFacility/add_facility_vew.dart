import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/style_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_textformfield.dart';
import 'package:agriverts/view/auth/widgets/custom_elevated_button.dart';
import 'package:agriverts/product/widgets/custom_stack_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AddFacilityView extends StatelessWidget {
  AddFacilityView({Key? key}) : super(key: key);
  final TextEditingController _facilityNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: MyColors.primaryColor,
                          ),
                        ),
                        Text(
                          'New Facility',
                          style: MyTextStyles.homeTitle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: CustomTextFormField(
                          controller: _facilityNameController,
                          label: 'Facility Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/qr.png',
                              ),
                              CustomElevatedButton(
                                onPressed: () {
                                  context.router.push(QRScannerView());
                                },
                                child:
                                    Text('Scan the barcode in your facility'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomStackButton(
                title: TextConstants.add,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
