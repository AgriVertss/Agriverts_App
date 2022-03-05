import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView>
    with AutomaticKeepAliveClientMixin<AuthView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(AppConstant.authTitle),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 400,
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: MyColors.appbarColor,
                      elevation: 0,
                      toolbarHeight: 0,
                      bottom: TabBar(
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
                      ),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TabBarView(
                        children: [
                          buildBaseContainer(
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    context.router.replace(const HomeView());
                                  },
                                  child: Text('Giriş Yap'),
                                  style: ButtonStyle(),
                                ),
                              ],
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
    );
  }

  Container buildBaseContainer({required Widget child}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: MyColors.authContainerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
