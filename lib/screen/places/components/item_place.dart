import 'dart:typed_data';

import 'package:bright_mobile/model/Place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                  child: place.images.isNotEmpty
                      ? Image.memory(place.images[0])
                      : Image(image: AssetImage('assets/images/not-found.jpg'),
                  )
              ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(place.name,
                          style: new TextStyle(fontWeight: FontWeight.bold)
              )
            )
          ],
        ),
      ),
    );
  }
}


