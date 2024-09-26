import 'package:flutter/material.dart';
import 'package:groceryapp/screens/third.dart';
class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
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
                  Image.asset("assets/second.jpeg",width: 350,height: 275,),
                  SizedBox(height: 25,),
                  Text("Make Payment",style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 25,),
                  Text("    A smooth checkout process with options for \n guest checkout, one-click payments, and clear \n error handling enhances user experience."                                     ,style: TextStyle(
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
        ),
      ),
    );
  }
}
