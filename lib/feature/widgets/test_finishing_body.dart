import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/app_field_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestFinishBody extends StatelessWidget {
  const TestFinishBody({
    Key? key,
  }) : super(key: key);

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
            Text("TEST BİTTİ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_box),
                Text(" Doğru.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
                
              ],
            ),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [                 
                Icon(Icons.clear),
                Text(" Yanlış.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
               
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Icon(Icons.adjust_rounded),
                Text(" Boş.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
              ],
            ),
            
            Text("Kazanılan puan : 15",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),),
            InkWell(
              onTap:(){ Navigator.pop(context);
              },
              child: appFieldButton(text: "GERİ DÖN")
              )
           
        
          ],
        ),
      ),
    )
     
    ] 
    );
  }
}