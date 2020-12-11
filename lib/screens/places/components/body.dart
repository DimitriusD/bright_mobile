import 'package:bright_mobile/screens/details/details_screen.dart';
import 'package:bright_mobile/model/Place.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../constants.dart';
import 'categories.dart';
import 'item_place.dart';

class Body extends StatelessWidget {
  final List<Place> places;

  const Body({Key key, this.places}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PaceCategories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: places.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) => ItemPlace(
                  place: places[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            place: places[index],)
                      )),
                )
            ),
          ),
        ),
      ],
    );
  }
}




