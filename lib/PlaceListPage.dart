import 'package:flutter/material.dart';

class PlaceListPage extends StatelessWidget{

  List<String> places = ["item1", "item2", "item3", "item4", "item5", "item5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index){
          String placeIndex = places[index];
          return Container(
            child: Text(placeIndex),
          );
        });
  }
}
