import 'package:flutter/material.dart';

class appFieldButton extends StatelessWidget {
  const appFieldButton({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 270,                     
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(50),
         color: Colors.purple ,
      ),
      child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 16))),
      
    );
  }
}
