import 'package:course_first_app/CoinFlipper.dart';
import 'package:course_first_app/stless_stfull.dart';
import 'package:course_first_app/xylophone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: 8,
              children: [
                Row(
                  children: [
                    Expanded(
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
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.message),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StlessStfull(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Coinflipper()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        color: Colors.purple,
                      ),
                      child: Text("Go to Coin", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      color: Colors.purple.shade50,
                    ),
                    child: Text(
                      "Hello",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Xylophone()),
                    );
                  },
                  child: Container(
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
                                backgroundImage: AssetImage(
                                  "assets/images/1.jpg",
                                ),
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
                                  fontFamily: "guides",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Go to Xylophone",
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
                                  Icon(
                                    Icons.push_pin_rounded,
                                    color: Colors.grey,
                                  ),
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
      ),
    );
  }
}
