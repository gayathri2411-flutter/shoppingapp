import 'package:flutter/material.dart';
import 'package:groceryapp/third.dart';
class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/second.jpeg",width: 350,),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>third()));
                }, child: Text("Next")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
