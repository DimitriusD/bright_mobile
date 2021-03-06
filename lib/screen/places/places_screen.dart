import 'package:bright_mobile/model/Place.dart';
import 'package:bright_mobile/network/PlacesApiService.dart';
import 'package:bright_mobile/services/PlaceService.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';




enum TabItem{Place, Event, Entertainment}

class PlacesScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _PlacesScreenState();
  }
}

class _PlacesScreenState extends State<PlacesScreen> {

  final PlaceService apiService = new PlaceService();

  Future<List<Place>> places;

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
    );
  }

  @override
  void initState() {
    super.initState();
    places = apiService.fetchPlaces();
  }
}