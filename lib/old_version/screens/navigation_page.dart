import 'package:bright_mobile/old_version/screens/profile/user_profile_screen.dart';
import 'package:flutter/material.dart';

import 'entertainment/entertainment_screen.dart';
import 'events/events_screen.dart';
import 'places/places_screen.dart';

class NavigationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
      );
  }

}
