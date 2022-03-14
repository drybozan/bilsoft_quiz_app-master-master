import 'package:bilsoft_quiz_app/feature/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       toolbarHeight: 0,//apbarı gizledik       
      ),
      body: SignInBody()
      
    );
  }
}