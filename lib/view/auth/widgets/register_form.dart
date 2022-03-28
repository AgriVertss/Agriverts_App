import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:agriverts/product/widgets/custom_textformfield.dart';
import 'package:agriverts/view/auth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registeremailController = TextEditingController();

  final registerpasswordController = TextEditingController();

  final registeruserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              controller: registeremailController,
              label: TextConstants.email,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: registeruserNameController,
              label: TextConstants.user,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: registerpasswordController,
              label: TextConstants.pass,
            ),
            SizedBox(
              height: 50,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is AuthNativeLoading) {
                  return PaddingCircularProgress();
                } else {
                  return CustomElevatedButton(
                    onPressed: () {
                      context.read<AuthCubit>().signUpWithNative(
                          email: registeremailController.text,
                          password: registerpasswordController.text,
                          userName: registeruserNameController.value.text);
                    },
                    child: Text(TextConstants.register),
                  );
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
