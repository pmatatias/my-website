import 'package:flutter/material.dart';
import 'package:logo_n_spinner/logo_n_spinner.dart';
import 'package:pmatatias/component/typing_animation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> dots() async {
    await Future.delayed(const Duration(seconds: 3));
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title), actions: const []),
      backgroundColor: const Color(0xFF202124),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LogoandSpinner(imageAssets: 'assets/me.png'),
            const TypingAnimation(
              text: 'Under Development',
              duration: 3000,
            ),
            const SizedBox(
              width: 4,
            ),
            FutureBuilder(
                future: dots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const TypingAnimation(
                      text: '-_-_-_-_-_-_-_-_-_-_-_-_-_',
                      duration: 4000,
                      repeat: true,
                    );
                  }
                  return const SizedBox();
                }),
          ],
        ),
      ),
    );
  }
}
