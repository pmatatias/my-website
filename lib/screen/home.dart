import 'package:flutter/material.dart';
import 'package:pmatatias/base_layout.dart';
import 'package:pmatatias/utils/appstate.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(title: Text(widget.title), actions: [
        TextButton(
          onPressed: () {
            final state = context.read<AppState>();
            state.setActivePage = 1;
          },
          child: const Text(
            "About",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        )
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            context.responsive<Widget>(
                Column(
                  children: const [
                    Text(
                      'ini default',
                    ),
                    Text(
                      'ini default',
                    )
                  ],
                ),
                lg: Row(
                  children: const [
                    Text(
                      'ini lg',
                    ),
                    Text(
                      'ini lg',
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
