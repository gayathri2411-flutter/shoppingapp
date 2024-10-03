import 'package:flutter/material.dart';
import 'package:groceryapp/screens/welcome.dart';
class forgot_password extends StatelessWidget {
   forgot_password({super.key});
final TextEditingController _email =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.3,horizontal: 10.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Forget ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 46,
              color: Colors.black,
            ),),
            Text("Password ?",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 46,
              color: Colors.black,
            ),),
        SizedBox(height: 15,),
        TextFormField(
          controller: _email,
          decoration: InputDecoration(

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.2)
              ),
              prefixIcon: Icon(Icons.mail),
              hintText:"Enter your e-mail Id",
            hintStyle:TextStyle(color: Color(0xFFA8A8A9)
            )

          ),),SizedBox(height: 20,),
            Text(" * we will send you a message set or reset \n   your new Password ",style: TextStyle(
              fontSize: 14,

            ),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 70.3),
              child: Center(
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
                      }, child: Text("Submit",style: TextStyle(
                      fontSize: 20
                  ),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

