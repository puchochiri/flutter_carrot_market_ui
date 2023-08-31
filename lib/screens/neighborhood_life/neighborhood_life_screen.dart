import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/neighborhood_life.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/screens/neighborhood_life/components/life_body.dart';
import 'package:flutter_carrot_market_ui/screens/neighborhood_life/components/life_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeighborhoodLifeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '동네생활',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {},
              color: Colors.black,
          ),
          IconButton(
              icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
              onPressed: () {},
              color: Colors.black,
          ),
          IconButton(
              icon: Icon(CupertinoIcons.bell),
              onPressed: () {},
              color: Colors.black,
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
              neighborhoodLifeList.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: LifeBody(
                    neighborhoodLife: neighborhoodLifeList[index],
                  ),
              ),
          ),



        ],
      ),
    );
  }
}
