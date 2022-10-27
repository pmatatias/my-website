import 'package:flutter/material.dart';
import 'package:pmatatias/screen/about.dart';
import 'package:pmatatias/screen/home.dart';
import 'package:pmatatias/utils/appstate.dart';
import 'package:provider/provider.dart';



class BaseLayout extends StatelessWidget {
  const BaseLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<AppState>(builder: (context, state, _) {
        return IndexedStack(
          index: state.activepage,
          children: const [
            MyHomePage(title: "Home page"),
            About(title: "About"),
          ],
        );
      }),
    );
  }
}
