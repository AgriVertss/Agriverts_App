import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/view/auth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({
    Key? key,
  }) : super(key: key);

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
            TextFormField(
              textInputAction: TextInputAction.next,
              controller: registeremailController,
              decoration: const InputDecoration(
                  focusColor: MyColors.primaryColor,
                  errorStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Enter Your Email",
                  label: Text("Email")),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Enter Valid Email";
                } else if (!value.contains("@")) {
                  return " You are missing @";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              controller: registeruserNameController,
              decoration: const InputDecoration(
                  hoverColor: MyColors.primaryColor,
                  focusColor: MyColors.primaryColor,
                  errorStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Kullanıcı Adı",
                  label: Text("Kullanıcı Adı")),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              textInputAction: TextInputAction.go,
              controller: registerpasswordController,
              decoration: const InputDecoration(
                hoverColor: MyColors.primaryColor,
                focusColor: MyColors.primaryColor,
                errorStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Password",
                label: Text(TextConstants.pass),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is AuthNativeLoading) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return CustomElevatedButton(
                    onPressed: () {
                      context.read<AuthCubit>().signUpWithNative(
                          email: registeremailController.text,
                          password: registerpasswordController.text);
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
