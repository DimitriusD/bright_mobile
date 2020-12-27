import 'package:flutter/material.dart';

import '../../../../constants.dart';

class PaceCategories extends StatefulWidget {
  @override
  _PaceCategoriesState createState() => _PaceCategoriesState();
}

class _PaceCategoriesState extends State<PaceCategories> {

  List<String> categories = ["category1", "category2", "category3", "category4"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => _buildCategory(index)),
    );
  }

  Widget _buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[selectedIndex],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white38
                )
                ,
              ),
              Container(
                margin: EdgeInsets.only(top: 1),
                height: 2,
                width: 30,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}