import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:agriverts/product/widgets/custom_textformfield.dart';
import 'package:agriverts/view/auth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _sigInFormKey = GlobalKey<FormState>();

class LoginForm extends StatefulWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final loginemailController = TextEditingController();

  final loginpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _sigInFormKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              controller: loginemailController,
              label: TextConstants.email,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              isObscure: true,
              controller: loginpasswordController,
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
                      context.read<AuthCubit>().signInWithNative(
                          password: loginpasswordController.value.text,
                          email: loginemailController.value.text);
                    },
                    child: Text(TextConstants.login),
                  );
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text(TextConstants.swipe),
          ],
        ),
      ),
    );
  }
}
