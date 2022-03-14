import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/app_field_button.dart';
import 'package:bilsoft_quiz_app/feature/screens/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestStartingBody extends StatelessWidget {
  const TestStartingBody({
    Key? key, required this.topicName,
  }) : super(key: key);
  final String topicName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
         Container(
        color: Colors.blueGrey,          
      ),
      Positioned(
        child: SvgPicture.asset(AssetsPath().chatSVG,
        height: 210,
        ),
        left: 0,
      ),
      Positioned(
        bottom: 35,
        left:0,
        right: 0,
        child: SizedBox(
          height: 500,
          width: 600,
          child: Column(   
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,         
            children: [             
              Text(topicName,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.white),),
              Text("Bu testte 20 soru var.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
              Text("Hazır mısın ?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
              InkWell(
                onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) => QuestionPage()));
                },
                child: appFieldButton(text: "BAŞLAT")
                )
             
          
            ],
          ),
        ),
      )
     
      ] 
    );
  }
}