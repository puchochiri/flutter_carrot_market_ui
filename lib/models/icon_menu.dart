import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class IconMenu {
  final String title;
  final IconData iconData;
  IconMenu({required this.title, required this.iconData});
}

final List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.mapPin),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.compress),
  IconMenu(title: '키워드 알림', iconData: FontAwesomeIcons.tag),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.borderAll),
];

final List<IconMenu> iconMenu2 = [
  IconMenu(title: '동네생활 글', iconData: Icons.edit),
  IconMenu(title: '동네생활 댓글', iconData: Icons.comment),
  IconMenu(title: '동네생활 주제 목록', iconData: Icons.star),
];

final List<IconMenu> iconMenu3 = [
  IconMenu(title: '비즈프로필 관리', iconData: Icons.store),
  IconMenu(title: '지역광고', iconData: Icons.format_list_bulleted),
  ];