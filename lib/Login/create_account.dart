import 'package:flutter/material.dart';
import 'package:groceryapp/Login/forgot_password.dart';
class create_account extends StatefulWidget {
  const create_account({super.key});

  @override
  State<create_account> createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
final TextEditingController _usename =TextEditingController();
final TextEditingController _password =TextEditingController();
final TextEditingController _confirm =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 100.4,horizontal: 20.5
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Create a",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 46,
                  color: Colors.black,
                ),),
                Text("Account",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 46,
                  color: Colors.black,
                ),),
                SizedBox(height: 15,),
                TextFormField(
                  controller: _usename,
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
                      hintText:"password"
                  ),
                ),SizedBox(height: 25,),
                TextFormField(
                  controller: _confirm,
                  obscureText: true,
                  decoration: InputDecoration(

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.2)
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "confirm password"
                  ),
                ),SizedBox(height: 25,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password()));
                      } ,
                      child: Text("By Clicking the Register button ,you agree \n to the pubic offers")),
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>create_account()));
                        }, child: Text("Create Account",style: TextStyle(
                      fontSize: 20
                    ),)),
                  ),
                ),SizedBox(height: 35,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>create_account()));
                      },
                      child: Image.asset("assets/login.jpeg",height: 170,width: 231,)),
                )
              ],
            ),
          ),
        ),



    );

  }
}
