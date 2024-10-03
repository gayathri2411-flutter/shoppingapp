import 'package:flutter/material.dart';
import 'package:groceryapp/Login/create_account.dart';
import 'package:groceryapp/screens/welcome.dart';

import 'forgot_password.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailId =TextEditingController();
  final TextEditingController _password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return

       Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 100.4,horizontal: 20.5
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Welcome",style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 46,
                       color: Colors.black,
                     ),),
                     Text("Back !",style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 46,
                       color: Colors.black,
                     ),),
                     SizedBox(height: 15,),
                     TextFormField(
                       controller: _emailId,
                       decoration: InputDecoration(

                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10.2)
                         ),
                         prefixIcon: Icon(Icons.person),
                         hintText:"emailId"
                       ),
                     ),SizedBox(height: 25,),
                     TextFormField(
                       controller: _password,

                       obscureText: true,
                       decoration: InputDecoration(
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10.2)),
                           prefixIcon: Icon(Icons.lock),
                           suffixIcon: Icon(Icons.remove_red_eye),
                           hintText:"Password"
                       ),
                     ),SizedBox(height: 10,),
                     Align(
                       alignment: Alignment.centerRight,
                       child: GestureDetector(
                           onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password()));
                           } ,
                           child: Text("forget password ?")),
                     ),
                     SizedBox(height: 50,),
                          Center(
                            child: SizedBox(
                              height: 55,
                              width: 317,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20), // Rounded corners
                                  ),
                                  backgroundColor:  Color(0xFFF83758),
                                  foregroundColor: Colors.white,),
                                  onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>welcome()));
                              }, child: Text("Login")),
                            ),
                          ),SizedBox(height: 55,),
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>create_account()));
                           },
                           child: Image.asset("assets/media.jpeg",height: 133,width: 194,)),
                     )
                   ],
            ),
          ),
        )
    );
  }
}
