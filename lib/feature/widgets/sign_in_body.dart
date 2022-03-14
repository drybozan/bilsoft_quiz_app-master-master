import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/app_field_button.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/text_field_button.dart';
import 'package:bilsoft_quiz_app/feature/screens/home_page.dart';
import 'package:bilsoft_quiz_app/feature/screens/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 650,
        width: 500,
        child: Stack(
          children: [
            Image.asset(
              AssetsPath().mainTopPNG,
              height: 160,
            ),
            Positioned(
              child: Image.asset(
                AssetsPath().loginBottomPNG,
                height: 120,
              ),
              bottom: 0,
              right: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: SizedBox(
                  height: 550,
                  width: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, //ekran boyutuna göre öğeler arasına aralık koyar
                    children: [
                      Text('GİRİŞ YAP'),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: SvgPicture.asset(
                          AssetsPath().loginSVG,
                          height: 190,
                        ),
                      ),
                      textFieldButton(
                          text: 'Email', preIcon: Icon(Icons.email)),
                      textFieldButton(
                        text: 'Parola',
                        preIcon: Icon(Icons.password_sharp),
                        suffIcon: Icon(Icons.visibility),
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: appFieldButton(text: 'Giriş Yap')
                        ),
                        appFieldButton(text: 'Misafir girişi'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Hesabın yok mu?'),
                          InkWell(
                            onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => const SignUp()));
    
                            },
                            child: Text(
                              'Kaydol',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _misafirGirisi() async{
    UserCredential sonuc = await FirebaseAuth.instance.signInAnonymously();
   print('Oturum açan user id : ' +sonuc.user!.uid.toString());
  }
}
