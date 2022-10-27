import 'package:flutter/material.dart';
import 'package:logo_n_spinner/logo_n_spinner.dart';
import 'package:pmatatias/utils/appstate.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  final title;
  const About({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(title),
        actions: [
          TextButton(
              onPressed: () {
                final state = context.read<AppState>();
                state.setActivePage = 0;
              },
              child: const Text(
                "Home",
                style: TextStyle(
                  color: Colors.red,
                ),
              ))
        ],
      ),
      body: const Center(child: LogoandSpinner(imageAssets: 'assets/me.png')),
    );
  }
}
