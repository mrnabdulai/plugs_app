import 'package:flutter/material.dart';

class PlugsScreen extends StatelessWidget {
  const PlugsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Plugs",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
      ),
    );
  }
}
