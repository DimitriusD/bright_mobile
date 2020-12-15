import 'package:bright_mobile/screens/details/details_screen.dart';
import 'package:bright_mobile/screens/profile/user_profile_screen.dart';
import 'package:flutter/material.dart';

import 'NewPlacesScreen.dart';
import 'constants.dart';
import 'screens/entertainment/entertainment_screen.dart';
import 'screens/events/events_screen.dart';
import 'screens/places/places_screen.dart';

class TabNavigatorRoutes {
  static const String places = '/';
  static const String events = '/events';
  static const String entertainment = '/entertainment';
  static const String profile = '/profile';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {

  TabNavigator({this.navigatorKey, this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final MenuTabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.places: (context) => PlacesScreen(),
      TabNavigatorRoutes.events: (context) => EventsScreen(),
      TabNavigatorRoutes.entertainment: (context) => EntertainmentScreen(),
      TabNavigatorRoutes.profile: (context) => UserProfileScreen(),
      TabNavigatorRoutes.detail: (context) => DetailScreen()
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.places,
      onGenerateRoute: (routeSettings) {
      return MaterialPageRoute(
        builder: (context) => routeBuilders[routeSettings.name](context),
      );
      }
    );
  }
}
