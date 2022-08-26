import 'package:flutter/material.dart';
import 'package:portfolio_web/loader/loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'matatias situmorang',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const LoaderWidget(),
    );
  }
}
