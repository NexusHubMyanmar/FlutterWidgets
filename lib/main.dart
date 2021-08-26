import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_categories/PotatoCategories/PotatoCategories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AppEntry(),
    );
  }
}

class AppEntry extends StatefulWidget {
  @override
  _AppEntryState createState() => _AppEntryState();
}

class _AppEntryState extends State<AppEntry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Align(
          alignment: Alignment.topCenter,
          child: PotatoCategories(),
        ),
      ),
    );
  }
}
