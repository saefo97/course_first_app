import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .end,
          children: [
            Text(
              "Hello\nWorld !",
              style: TextStyle(
                color: Colors.red,
                fontSize: 35,
                fontWeight: FontWeight.w500,
                fontFamily: "times",
                decoration: .underline,
                decorationColor: Colors.red,
                decorationStyle: .wavy,
                backgroundColor: Colors.green.shade100,
                fontStyle: .italic,
                letterSpacing: 3,

                // wordSpacing: 10,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              overflow: .ellipsis,
            ),
            Container(
              width: 150,
              height: 50,
              child: Text("XX"),

              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              constraints: BoxConstraints(maxWidth: 150),
              decoration: BoxDecoration(
                //  color: Colors.blue,
                //  shape: BoxShape.circle,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
                border: Border.all(color: Colors.black, width: 3.2),

                gradient: LinearGradient(
                  colors: [Colors.red, Colors.green],

                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 5,
                    spreadRadius: 3,
                    offset: Offset(3, 3),
                  ),
                  BoxShadow(
                    color: Colors.purple,
                    blurRadius: 5,
                    spreadRadius: 3,
                    offset: Offset(-3, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
