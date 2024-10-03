import 'package:flutter/material.dart';
class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  final TextEditingController _search =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Image.asset("assets/splash_screen.jpeg",width: 250,height: 40,),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),

          ),
          SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top:15.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              controller: _search,
              decoration: InputDecoration(

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.2)
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search,color: Colors.grey,),
                  ),
                  suffixIcon: Icon(Icons.mic,color: Colors.grey,),
                hintText:"search any Product",
                hintStyle:TextStyle(color: Color(0xFFA8A8A9))
              ),),
            ),
          )
          ],
        ),
      ),
    );
  }
}
