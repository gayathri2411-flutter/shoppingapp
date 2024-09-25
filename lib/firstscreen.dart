import 'package:flutter/material.dart';
import 'package:groceryapp/second.dart';
class first extends StatefulWidget {
   first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/firstpage.jpeg",width: 350,),
              SizedBox(height: 25,),
              Text("Choose Product",style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 25,),
             Text("   Explore a vast array of products across various"
                 " \n  categories, ensuring you find exactly what\n "
                 "  you need with ease. ",style: TextStyle(
               color: Colors.grey,
               fontSize: 17,
               fontWeight: FontWeight.w400,
             ),),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>second()));
                }, child: Text("Next")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
