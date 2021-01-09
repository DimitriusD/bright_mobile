import 'dart:typed_data';

import 'package:bright_mobile/model/Place.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ItemPlace extends StatelessWidget {

  final Place place;
  final Function press;

  const ItemPlace({
    Key key,
    this.place,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
                child: place.images.isNotEmpty ? Image.memory(place.images[0]) : Image(
                  image: AssetImage('assets/images/not-found.jpg'),
                )  ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(place.name),
          )
        ],
      ),
    );
  }
}


