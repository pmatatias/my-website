import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/about.dart';
import 'package:portfolio_web/screen/home.dart';
import 'package:portfolio_web/utils/appstate.dart';
import 'package:provider/provider.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    return SafeArea(
      child: IndexedStack(
        index: state.activepage,
        children: const [
          MyHomePage(title: "Home page"),
          About(title: "About"),
        ],
      ),
    );
  }
}
