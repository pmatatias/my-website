import 'package:flutter/material.dart';
import 'package:pmatatias/screen/about.dart';
import 'package:pmatatias/screen/home.dart';
import 'package:pmatatias/utils/appstate.dart';
import 'package:provider/provider.dart';

extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}

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
