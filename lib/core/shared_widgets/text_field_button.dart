import 'package:flutter/material.dart';

class textFieldButton extends StatelessWidget {
  const textFieldButton({
    Key? key,required this.text,required this.preIcon, this.suffIcon,
  }) : super(key: key);

  final String text;
  final Icon preIcon; 
  final Icon? suffIcon; 

  @override
  Widget build(BuildContext context) {
    return TextFormField(    
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)),
            prefixIcon: preIcon,
            suffixIcon: suffIcon,
            hintText: text,        
            fillColor: Color.fromARGB(255, 234, 219, 236),
            filled: true, //tüm alanı boya
            
            ),
    
    );
  }
}
