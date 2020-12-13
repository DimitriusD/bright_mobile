import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  final Size preferredSize;

  final String title;

  final double height;

  ProfileAppBar(
      { Key key,
        this.height,
        this.title}) : preferredSize = Size.fromHeight(160.0),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(width: kDefaultPadding),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
              IconButton(
                  icon: Container(
                      child: Icon(Icons.settings),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: Colors.white)
                      )
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsScreen()
                      ))),
            ],
          ),
          CircleAvatar(
            radius: 50,
            child: Icon(Icons.person)
          ),
          Text(
            "User Name",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }


}
