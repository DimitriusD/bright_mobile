import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/model/Place.dart';
import 'package:flutter/material.dart';



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
            child: Stack(
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                          child: place.images.isNotEmpty
                              ? Image.memory(place.images[0])
                              : Image(image: AssetImage('assets/images/not-found.jpg'))
                    ),
                      Text(
                        place.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(place.location, style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
                      Text(place.description)
                    ],
                  ),

              ],
            )
          )
        ],
      ),
    );
  }
}

