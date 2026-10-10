import 'package:flutter/material.dart';

class Coinflipper extends StatelessWidget {
  const Coinflipper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CircleAvatar(
              radius: 90,

              backgroundImage: AssetImage("assets/images/coin2.jpg",
              ),
            ),
            MaterialButton(onPressed: (){

            },
            child: Text("Flip It!",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),


            ),
            )
          ],
        ),
      ),
    );
  }
}
