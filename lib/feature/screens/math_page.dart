import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/feature/widgets/topic_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MathPage extends StatelessWidget {
  const MathPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MATEMATİK",style:TextStyle(fontSize: 22,color:Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.red,
        ),
      body: GridView.count(

        padding: EdgeInsets.all(10),
        crossAxisCount: 2,        
        mainAxisSpacing: 20, 
        crossAxisSpacing: 20,
      children: [
        TopicMenu(topicName: "Algoritma", topicColor: Colors.pinkAccent,),
        TopicMenu(topicName: "Köklü Sayılar",topicColor: Colors.redAccent),
        TopicMenu(topicName: "İntegral",topicColor: Colors.grey),
        TopicMenu(topicName: "Üslü Sayılar", topicColor: Colors.deepPurpleAccent,),
        TopicMenu(topicName: "Köklü Sayılar",topicColor: Colors.black),
        TopicMenu(topicName: "İntegral",topicColor: Colors.yellow)
      
      ],
      ),
    );
  }
}


             
            
        
                
       
      
  
    

