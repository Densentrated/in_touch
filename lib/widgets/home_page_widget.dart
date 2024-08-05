import 'package:flutter/material.dart';
import 'contact_widget.dart';
import '../util/frequency.dart';
import '../util/contact.dart';
import 'bottom_bar_widget.dart';

//TODO remove need for title paramater

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO remove this contact list used for testing and replace it with one loaded from a JSON
  final List<Contact> contactList = [
    Contact("John Doe", Frequency.daily),
    Contact("Jane Doe", Frequency.weekly),
    Contact("John Smith", Frequency.monthly),
    Contact("Jane Smith", Frequency.yearly),
    Contact("Alice Johnson", Frequency.daily),
    Contact("Bob Brown", Frequency.weekly),
    Contact("Charlie Davis", Frequency.monthly),
    Contact("Diana Evans", Frequency.yearly),
    Contact("Eve Foster", Frequency.daily),
    Contact("Frank Green", Frequency.weekly),
    Contact("Grace Harris", Frequency.monthly),
    Contact("Hank Irving", Frequency.yearly)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                      child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: contactList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ContactWidget(contact: contactList[index]);
                      //return Text(contactList[index].name);
                    },
                    separatorBuilder: (context, index) => const Divider(),
                  )),
                ),
              ),
              const Expanded(
                  flex: 1,
                  child:
                      BottomBarWidget(homeActive: true, settingsActive: false))
            ]),
      ),
    );
  }
}
