import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/app_field_button.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/text_field_button.dart';
import 'package:bilsoft_quiz_app/feature/screens/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 650,
        width: 500,
        child: Stack(
          children: [
            Image.asset(
              AssetsPath().signUpBottomPNG,
              height: 160,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                AssetsPath().mainBottomPNG,
                height: 160,
              ),
            ),
            Center(
              child: Container(
                height: 400,
                width: 280,
                //color:Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text('KAYDOL', style:TextStyle(fontWeight: FontWeight.w800) ,),
                  textFieldButton(text: "Kullanıcı Adı", preIcon: Icon(Icons.person)),
                  textFieldButton(text: "Email", preIcon: Icon(Icons.mail)),
                  textFieldButton(text: "Parola", preIcon: Icon(Icons.password),suffIcon: Icon(Icons.visibility) ),
                  textFieldButton(text: "Sınıf", preIcon: Icon(Icons.grade)),
                  appFieldButton(text: "KAYDOL"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Zaten hesabın var mı? "),
                      InkWell(
                        onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const SignIn()));  },
                        child: Text("Giriş Yap" ,style:TextStyle(fontWeight:FontWeight.w700 , color: Colors.purple) ,)),
                    ],
                  )
    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




