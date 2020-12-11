import 'package:bright_mobile/model/Place.dart';
import 'package:bright_mobile/network/PlacesApiService.dart';
import 'package:bright_mobile/screens/places/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

enum TabItem{Place, Event, Entertainment}

class PlacesScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _PlacesScreenState();
  }
}

class _PlacesScreenState extends State<PlacesScreen> {

  final PlaceApiService apiService = new PlaceApiService();

  Future<List<Place>> places;

  TabItem currentTabItem = TabItem.Place;


  void _selectTab(TabItem tabItem){
    setState(() {
      currentTabItem = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Places",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),),
        ),
      ),
      body: FutureBuilder<List<Place>>(
        future: places,
        builder: (context, snapshot){
          return snapshot.hasData
              ?  Body(places: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),

//      Body(apiService.fetchPlaces()),
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

  Color _colorTabMatching(TabItem item) {
    return currentTabItem == item ? Colors.blue: Colors.grey;
  }

  @override
  void initState() {
    super.initState();
    places = apiService.fetchPlaces();
  }
}