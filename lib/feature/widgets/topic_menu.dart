import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/feature/screens/test_starting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopicMenu extends StatelessWidget {
  const TopicMenu({
    Key? key, required this.topicName, required this.topicColor, 
  }) : super(key: key);

  final String topicName;
  final Color topicColor;
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: CircleAvatar(
        backgroundColor: topicColor,
        radius: 100,
        child: InkWell(
          onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) => TestStartPage()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SvgPicture.asset(AssetsPath().questionLogoSVG,height: 100,),
            Text(topicName,style: TextStyle(
              fontSize:18,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            
          ],),
        ),
      ),
    );
  }
}