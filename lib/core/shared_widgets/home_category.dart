import 'package:bilsoft_quiz_app/feature/domain/entity/album.dart';
import 'package:bilsoft_quiz_app/feature/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    Key? key,
    required this.album,
  }) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: GestureDetector(onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) => album.goTo));
          },
            child: Container(
              height: 168,
              width: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: album.color,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(album.imagePath, height: 100),
                  Center(
                    child: Text(
                      album.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
