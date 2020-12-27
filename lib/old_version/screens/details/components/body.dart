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
                    Container(
                          child: Image.asset('assets/images/come.jpg',
                          fit: BoxFit.fill,)
                    ),
                      Text("Кафе Come and Stay находится в центральной части Киева, поэтому здесь всегда много посетителей. Кафе довольно небольшое, при этом оно очень светлое и уютное. Возле барной стойки можно купить не только еду, но и интересные сувениры и открытки. ")
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}

