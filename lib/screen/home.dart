import 'package:flutter/material.dart';
import 'package:logo_n_spinner/logo_n_spinner.dart';
import 'package:pmatatias/utils/responsive.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title), actions: const []),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            context.responsive<Widget>(
              Column(
                children: const [
                  LogoandSpinner(imageAssets: 'assets/me.png'),
                  Text(
                    'Under Development...',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
