import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/style_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/view/auth/widgets/login_form.dart';
import 'package:agriverts/view/auth/widgets/register_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthView extends StatefulWidget with AutoRouteWrapper {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: this,
    );
  }
}

class _AuthViewState extends State<AuthView>
    with AutomaticKeepAliveClientMixin<AuthView> {
  final loginemailController = TextEditingController();
  final loginpasswordController = TextEditingController();
  final registeremailController = TextEditingController();
  final registerpasswordController = TextEditingController();
  final registeruserNameController = TextEditingController();
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSucces) {
          context.router.replace(const HomeView());
        }
      },
      child: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                TextConstants.authTitle,
                style: MyTextStyles.defaultTextStyle,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 400,
                  child: DefaultTabController(
                    initialIndex: 0,
                    length: 2,
                    child: Scaffold(
                      backgroundColor: Colors.white,
                      resizeToAvoidBottomInset: false,
                      appBar: AppBar(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: MyColors.appbarColor,
                        elevation: 0,
                        toolbarHeight: 0,
                        bottom: buidTabbar(),
                      ),
                      body: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TabBarView(
                          children: [
                            buildBaseContainer(
                              child: LoginForm(
                                  emailController: loginemailController,
                                  passwordController:
                                      loginpasswordController),
                            ),
                            buildBaseContainer(
                              child: RegisterForm(
                                emailController: registeremailController,
                                passwordController:
                                    registerpasswordController,
                                userNameController:
                                    registeruserNameController,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<AuthCubit>().auth();
                },
                child: Text('Sign In With Google'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TabBar buidTabbar() {
    return TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: MyColors.tabbarColor,
      ),
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(
          text: TextConstants.login,
        ),
        Tab(
          text: TextConstants.register,
        )
      ],
    );
  }

  Container buildBaseContainer({required Widget child}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: MyColors.authContainerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(child: child),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
