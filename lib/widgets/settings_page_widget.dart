import 'package:flutter/material.dart';
import 'bottom_bar_widget.dart';

// TODO remove need for title parameter

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Expanded(
              flex: 9,
              child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text("$title: 90 Percent"),
                  )),
            ),
            const Expanded(
                flex: 1,
                child: BottomBarWidget(homeActive: false, settingsActive: true))
          ])),
    );
  }
}
