import 'package:flutter/material.dart';
import 'package:netfl/screen/home_screen.dart';
import 'package:netfl/screen/more_screen.dart';
import 'package:netfl/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TabController controller;
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                Container(
                  child: Center(child: Text('search')),
                ),
                Container(
                  child: Center(child: Text('Save')),
                ),
                MoreScreen(),
              ]),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
