import 'package:flutter/material.dart';
import 'package:groceryapp/Login/Login.dart';


class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 150.3,horizontal: 20.6
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/third.jpeg",width: 350,),
                  SizedBox(height: 25,),
                  Text("Get Your Order",style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 25,),
                  Text("  shopping app allows users to track their \npurchased items from order confirmation to \n delivery. It provides real-time updates, including \n order status, shipping details, and estimated \ndelivery times. ",style: TextStyle(
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
        ),
      ),
    );
  }
}
