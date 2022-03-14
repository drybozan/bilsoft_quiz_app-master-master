import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:flutter/material.dart';


class QuestionPage extends StatelessWidget {
  //const QuestionPage({ Key? key }) : super(key: key);
  
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Colors.lightBlue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,),
        body: Stack(
          children: [
           Container(             
             color: Colors.black,
             width: 500,
             height: 800,             
           ),   
           Row(   
             mainAxisAlignment: MainAxisAlignment.spaceAround,                      
             children: [                            
               Container(
                 width: 200,
                 height: 50, 
                 decoration: BoxDecoration(
                  color: Colors.cyan,
                   
                 ),
                 child:Center(
                   child: Text("SORU: 3/20",style: TextStyle(
                     fontSize: 24,
                     fontWeight:FontWeight.w800,
                     color:Colors.white  
                      ),),
                 )
                             
               ), 
                Container(
                 width: 200,
                 height: 50, 
                 decoration: BoxDecoration(
                  color: Colors.orange,
                  

                 ),
                 child:Center(
                   child: Text("SIRADAKİ SORU",style: TextStyle(
                     fontSize: 20,
                     fontWeight:FontWeight.w800,
                     color:Colors.white  
                      ),),
                 )
                             
               ),
             ],
           ),            
            Positioned(
              bottom:10,
              right: 10,
              left:10,
              top:60,
              child: Container(                     
                height: 550,
                width: 400,  
                decoration: BoxDecoration(                       
                 color: Colors.white, 
                 borderRadius: BorderRadius.circular(50),
                 border: Border.all(
                   color: Colors.black45,style: 
                   BorderStyle.solid,                     
                   ) 
                ), 
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children :[                                   
                 Container(
                   padding: EdgeInsets.all(120),
                   width:380,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color:Colors.grey.shade200,                                          
                   ),
                   
                 ),
                  InkWell(
                    onTap: (){
                      print("Tapped on container");
                                            
                       },
                    child: Container(
                     padding: EdgeInsets.all(40),
                     width:380,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),
                       color:Colors.grey.shade200
                     ),
                     
                  ),
                  ),
                  Container(
                   padding: EdgeInsets.all(40),
                   width:380,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color:Colors.grey.shade200
                   ),
                 ),
                  Container(
                   padding: EdgeInsets.all(40),
                   width:380,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color:Colors.grey.shade200
                   ),
                 ),
                  Container(
                   padding: EdgeInsets.all(40),
                   width:380,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color:Colors.grey.shade200
                   ),
                 )
                  
                   
                  ]
                ),                             
                 ),
            )
           
          ],
        ),
      
    );
  }
}