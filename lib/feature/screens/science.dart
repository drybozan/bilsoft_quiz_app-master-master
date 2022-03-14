import 'package:bilsoft_quiz_app/feature/widgets/topic_menu.dart';
import 'package:flutter/material.dart';

class SciencePage extends StatelessWidget {
  const SciencePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("FEN BİLİMLERİ",style:TextStyle(fontSize: 22,color:Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.grey,
      ),
      body: GridView.count(

        padding: EdgeInsets.all(10),
        crossAxisCount: 2,        
        mainAxisSpacing: 20, 
        crossAxisSpacing: 20,
      children: [
        TopicMenu(topicName: "Üslü Sayılar", topicColor: Colors.pinkAccent,),
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