import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/cubits/authCubit/auth_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView>
    with AutomaticKeepAliveClientMixin<AuthView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if(state is AuthSucces){
            context.router .replace(const HomeView());
          }
        },
        child: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  AppConstant.authTitle,
                  style: MyTextStyles.defaultTextStyle,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 400,
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 2,
                      child: Scaffold(
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
                                child: Form(
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
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                              focusColor: MyColors.primaryColor,
                                              errorStyle: TextStyle(
                                                color: Colors.red,
                                                fontSize: 15,
                                              ),
                                              border: OutlineInputBorder(),
                                              hintText: "Enter Your Email",
                                              label: Text("Email")),
                                          validator: (String? value) {
                                            if (value == null ||
                                                value.isEmpty) {
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
                                          controller: passwordController,
                                          decoration: const InputDecoration(
                                              focusColor: MyColors.primaryColor,
                                              errorStyle: TextStyle(
                                                color: Colors.red,
                                                fontSize: 15,
                                              ),
                                              border: OutlineInputBorder(),
                                              hintText: "Enter Your Email",
                                              label: Text("Email")),
                                          validator: (String? value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Enter Valid Email";
                                            } else if (!value.contains("@")) {
                                              return " You are missing @";
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            context.read<AuthCubit>().auth();
                                          },
                                          child:
                                              BlocBuilder<AuthCubit, AuthState>(
                                            builder: (context, state) {
                                              if (state is AuthInitial) {
                                                return Text(AppConstant.login);
                                              } else if (state is AuthLoading) {
                                                return CustomLoadingIndicator();
                                              } else {
                                                return Text(AppConstant.login);
                                              }
                                            },
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: MyColors.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              buildBaseContainer(
                                child: Column(
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
          text: AppConstant.login,
        ),
        Tab(
          text: AppConstant.register,
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
