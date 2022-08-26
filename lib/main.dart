import 'package:flutter/material.dart';
import 'package:portfolio_web/base_layout.dart';
import 'package:portfolio_web/screen/about.dart';
import 'package:portfolio_web/utils/appstate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: const BaseLayout(),
      ),
    );
  }
}

