import 'package:flutter/material.dart';

import 'Login/Login.dart';
class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/third.jpeg",width: 350,),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, child: Text("Next")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
