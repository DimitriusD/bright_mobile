import 'package:flutter/material.dart';

import 'model/Place.dart';

class DetailScreenBody extends StatelessWidget {

  final Place place;

  const DetailScreenBody({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It provide us total height and wight
    Size size  = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
          )
        ],
      ),
    );
  }
}
