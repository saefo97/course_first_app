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
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          //  physics: BouncingScrollPhysics(),
          child: Column(
            spacing: 8,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  //  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade700),
                  ),
                ),
              ),
              Row(
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

              Container(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 54,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          radius: 52,
                          backgroundColor: Colors.grey.shade200,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/1.jpg"),
                            radius: 50,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Text(
                            "D7d07",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "GGGGGGGGGG",
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        spacing: 8,
                        children: [
                          Text("12:33"),
                          Row(
                            children: [
                              Icon(Icons.push_pin_rounded, color: Colors.grey),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "3",
                                  style: TextStyle(color: Colors.white),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.yellow],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/2.jpg"),
                    radius: 50,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/1.jpg"),
                      radius: 50,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/2.jpg"),
                      radius: 50,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.yellow],
                          begin: AlignmentGeometry.topLeft,
                          end: AlignmentGeometry.bottomRight,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 52,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/2.jpg"),
                          radius: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/1.jpg"),
                      radius: 50,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/2.jpg"),
                      radius: 50,
                    ),
                  ],
                ),
              ),

              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 1,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                ),
                children: [
                  for (int i = 1; i <= 10; i++)
                    Image.asset("assets/images/$i.jpg", fit: BoxFit.cover),
                ],
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have a Rockstar Games account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Create a new account right now",
                      style: TextStyle(
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
