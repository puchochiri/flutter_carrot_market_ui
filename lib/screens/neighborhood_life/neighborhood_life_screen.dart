import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent[100],
      child: Center(
        child: Text(
            'neighborhoodLifeScreen',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),
        ),
      ),
    );
  }
}
