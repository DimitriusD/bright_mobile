import 'package:bright_mobile/screens/places/components/body.dart';
import 'package:flutter/material.dart';

import 'screens/entertainment/entertainment_screen.dart';
import 'screens/events/events_screen.dart';
import 'screens/places/places_screen.dart';
import 'screens/profile/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final tabs = [
      PlacesScreen(),
      EventsScreen(),
      EntertainmentScreen(),
      UserProfileScreen()];

    return new MaterialApp(
      title: 'Bright',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              PlacesScreen(),
              EventsScreen(),
              EntertainmentScreen(),
              UserProfileScreen()
            ],
          ),

          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.layers),
                text: "Place"
              ),
              Tab(
                icon: new Icon(Icons.layers),
                text: "Event"
              ),
              Tab(
                icon: new Icon(Icons.layers),
                text: "Entertainment"
              ),
              Tab(
                  icon: new Icon(Icons.layers),
                  text: "Profile"
              )
            ],
            labelColor: Colors.white70,
            unselectedLabelColor: Colors.blueGrey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
          ),
          backgroundColor: Colors.black12,
        ),
      ),
    );
  }
}











