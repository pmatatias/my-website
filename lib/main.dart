import 'package:flutter/material.dart';
import 'package:pmatatias/base_layout.dart';
import 'package:pmatatias/utils/appstate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'matatias situmorang',
          theme: ThemeData(primarySwatch: Colors.lightBlue),
          home: const BaseLayout()),
    );
  }
}
