import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Album {
  final String imagePath;
  final String name;
  final Color color;
  final Widget goTo;

  Album(  {
    required this.imagePath,
    required this.name,
    required this.color,
    required this.goTo,
  });
}
