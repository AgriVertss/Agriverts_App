import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  final loginemailController = TextEditingController();
  final loginpasswordController = TextEditingController();

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
              controller: loginemailController,
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
              textInputAction: TextInputAction.go,
              controller: loginpasswordController,
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
                  label: Text("Password")),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthCubit>().signInWithNative(
                    password: loginpasswordController.text,
                    email: loginemailController.text);
                // context.router .replace(const HomeView());
              },
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  if (state is AuthInitial) {
                    return Text(TextConstants.login);
                  } else if (state is AuthNativeLoading) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Text(TextConstants.login);
                  }
                },
              ),
              style: ElevatedButton.styleFrom(
                primary: MyColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Hesabın yok mu? Hemen sağa kaydırarak kayıt olabilirsin'),
          ],
        ),
      ),
    );
  }
}