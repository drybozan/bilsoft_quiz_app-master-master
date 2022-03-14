import 'package:bilsoft_quiz_app/feature/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //barın altındaki gölgeliği kaldırır
        title: Center(child: Text('MRB')),
        actions: [
          Icon(Icons.person)
        ],
       
      ),
       body:HomePageBody()
    );
  }
}