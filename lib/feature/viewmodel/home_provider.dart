import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/feature/domain/entity/album.dart';
import 'package:bilsoft_quiz_app/feature/screens/english.dart';
import 'package:bilsoft_quiz_app/feature/screens/math_page.dart';
import 'package:bilsoft_quiz_app/feature/screens/science.dart';
import 'package:bilsoft_quiz_app/feature/screens/social.dart';
import 'package:bilsoft_quiz_app/feature/screens/turkish_page.dart';
import 'package:bilsoft_quiz_app/feature/widgets/topic_menu.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  List<Album> albums = [
    Album(
      imagePath: AssetsPath().turkceSVG,
      name: "Türkçe",
      color: Colors.orange,
      goTo: TurkisPage()

    ),
    Album(
      imagePath: AssetsPath().mathSVG,
      name: "Matematik",
      color: Colors.red, 
      goTo: MathPage() 
    ),
    Album(
      imagePath: AssetsPath().fenSVG,
      name: "Fen Bilimleri",
      color: Colors.grey, 
      goTo: SciencePage()
    ),
    Album(
      imagePath: AssetsPath().sosyalSVG,
      name: "Sosyal Bilimler",
      color: Colors.green, 
      goTo: SocialPage()
    ),
    Album(
      imagePath: AssetsPath().ingSVG,
      name: "İngilizce",
      color: Colors.pinkAccent,
      goTo: EnglishPage()
    ),
    
    
  ];
}
