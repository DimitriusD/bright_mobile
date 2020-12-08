import 'package:bright_mobile/constants.dart';
import 'package:flutter/material.dart';

import '../../../model/Place.dart';

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
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Come and Stay",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(16),
                          )
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}


//
//Padding(
//padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text(
//"Come and Stay",
//style: Theme.of(context)
//.textTheme
//    .headline4
//    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
//),
//Expanded(
//child: Container(
//decoration: BoxDecoration(
//color: Colors.brown,
//borderRadius: BorderRadius.circular(16),
//),
////            child: Image.asset("image"),
//),
//)
//],
//),
//),