import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Column(
        children: [
          _buildProfileRow(),
          const SizedBox(height: 30,),
          _buildProfileButton(),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildRoundTextButton('판매내역',FontAwesomeIcons.receipt),
              _buildRoundTextButton('구매내역',FontAwesomeIcons.bagShopping),
              _buildRoundTextButton('관심목록',FontAwesomeIcons.heart),
            ],
          )
        ],
      ),


    );
  }
}

_buildProfileRow() {
  return Row(
    children: [
      Stack(
        children: [
          SizedBox(
            width: 65,
            height: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32.5),
              child: Image.asset(
                'asset/img/iTunesArtwork@1x.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100]
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              )
          ),
        ],
      ),
      SizedBox(width: 16,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('developer', style: textTheme().displayMedium,),
          SizedBox(height: 10,),
          Text('좌동 #00912'),
        ],
      )
    ],
  );
}

_buildProfileButton() {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        border:Border.all(
          color: Color(0xFFD4D5DD),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      height: 45,
      child: Center(
        child: Text(
          '프로필기 보기',
          style: textTheme().titleMedium),
      ),
    ),
  );
}

_buildRoundTextButton(String title, IconData iconData) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Color.fromRGBO(255, 226, 208, 1),
          border: Border.all(color: Color(0xFFD4D5DD), width: 0.5)
        ),
        child: Icon(
          iconData,
          color: Colors.orange,
        ),
      ),
      SizedBox(height: 10,),
      Text(
          title,
          style: textTheme().titleMedium,
      )
    ],
  );
}
