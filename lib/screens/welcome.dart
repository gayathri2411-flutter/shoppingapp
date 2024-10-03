import 'package:flutter/material.dart';
import 'package:groceryapp/pages/first_page.dart';
class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body: Container(
               width:double.infinity,
               height: double.infinity,
               decoration:BoxDecoration(

                 image:DecorationImage(
                   fit: BoxFit.contain,
                     image: AssetImage("assets/welc.png"))
               ),
               child: Padding(
                 padding: const EdgeInsets.all(19.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                       Padding(
                         padding: const EdgeInsets.only(bottom: 13.2,left: 13.2,right: 15.1),
                         child: Text("      You Want \n Authentic, here \n        You go!",style: TextStyle(
                           fontSize: 38,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),),
                       ),
                    Text("Find it here ,buy it now",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                       color: Color(0xFFF2F2F2)
                    )),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                               height: 55,
                          width: 279,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.5)
                                )
                              ),
                              onPressed: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>firstpage()));
                              }, child:Text("Get Started",style: TextStyle(
                            fontSize: 20
                          ),))),
                    )
                  ],

                 ),
               ),
             ),
    );
  }
}
