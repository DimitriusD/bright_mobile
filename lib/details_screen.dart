import 'package:bright_mobile/detail_screen_body.dart';
import 'package:bright_mobile/model/Place.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final Place place;

  const DetailScreen({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading:
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white),
          onPressed: () => Navigator.pop(context),),
      ),
      body: DetailScreenBody(place: place,),
    );
  }
}
