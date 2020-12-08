import 'package:bright_mobile/components/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

enum TabItem{Place, Event, Entertainment}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Bright',

      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: App(),
    );
  }
}

class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {

  TabItem currentTabItem = TabItem.Place;

  void _selectTab(TabItem tabItem){
    setState(() {
      currentTabItem = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  Body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => _selectTab(TabItem.values[index]),
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
                Icons.layers,
                color: _colorTabMatching(TabItem.Place)),
            label: 'Place',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
                Icons.layers,
                color: _colorTabMatching(TabItem.Event)),
            label: 'Event',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.layers,
                color: _colorTabMatching(TabItem.Entertainment)),
              label: 'Entertainment',
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container();
  }
  Color _colorTabMatching(TabItem item) {
    return currentTabItem == item ? Colors.blue: Colors.grey;
  }
}






