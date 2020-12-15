import 'package:flutter/material.dart';

import 'TabNavigator.dart';
import 'constants.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {

  var _currentTab = MenuTabItem.Place;

  final _navigatorKeys = {
    MenuTabItem.Place: GlobalKey<NavigatorState>(),
    MenuTabItem.Event: GlobalKey<NavigatorState>(),
    MenuTabItem.Entertainment: GlobalKey<NavigatorState>(),
    MenuTabItem.Profile: GlobalKey<NavigatorState>(),
  };

  void _selectTab(MenuTabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(MenuTabItem.Place),
          _buildOffstageNavigator(MenuTabItem.Event),
          _buildOffstageNavigator(MenuTabItem.Entertainment),
          _buildOffstageNavigator(MenuTabItem.Profile),
        ]),
        bottomNavigationBar: BottomNavigationMenu(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      );
    }

  _buildOffstageNavigator(MenuTabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem
      ),
    );
  }

}


  


class BottomNavigationMenu extends StatelessWidget  {

  final MenuTabItem currentTab;
  final ValueChanged<MenuTabItem> onSelectTab;

  const BottomNavigationMenu({Key key, this.currentTab, this.onSelectTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _buildItem(),
      onTap: (index) => onSelectTab(
          MenuTabItem.values[index]
      )
    );
  }

  List<BottomNavigationBarItem> _buildItem() {
    List<BottomNavigationBarItem> bottomNavigationBarItems = new List<BottomNavigationBarItem>();
    MenuTabItem.values.forEach((element) => {
      bottomNavigationBarItems.add(
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers
            ),
            label: element.toString().split('.').last
          )
      )
    });
    return bottomNavigationBarItems;
  }
}