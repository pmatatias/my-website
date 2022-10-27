import 'package:flutter/material.dart';
import 'package:pmatatias/base_layout.dart';
import 'package:pmatatias/utils/appstate.dart';
import 'package:provider/provider.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
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
