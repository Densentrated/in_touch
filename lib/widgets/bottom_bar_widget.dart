import 'package:flutter/material.dart';
import 'home_page_widget.dart';
import 'settings_page_widget.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget(
      {super.key, required this.homeActive, required this.settingsActive});
  final bool homeActive;
  final bool settingsActive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                print("Home Button Pushed");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage(title: 'Home Page');
                }));
              },
              child: Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Text("Home"),
                  )),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                print("Settings Button Pushed");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SettingsPage(title: "Settings Page");
                }));
              },
              child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text("Settings"),
                  )),
            )),
      ]),
    );
  }
}
