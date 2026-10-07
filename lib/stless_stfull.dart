import 'package:flutter/material.dart';

class StlessStfull extends StatefulWidget {
   StlessStfull({super.key});

  @override
  State<StlessStfull> createState() => _StlessStfullState();
}

class _StlessStfullState extends State<StlessStfull> {

   @override
  void initState() {
    print("Hi");
    super.initState();
  }

  @override
  void dispose() {
    print("Bye");
    super.dispose();
  }

  bool isHidden = true;
  bool isPressed = false;
  String text = "" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text("The Value is: $text"),
            TextFormField(
              onChanged: (value) {

                  text = value;

              },
              obscureText: isHidden,
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
                hintText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off),
                  onPressed: (){
                    setState(() {
                      isHidden=!isHidden;
                    });
                  },
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            
            AnimatedContainer(duration: Duration(
              milliseconds: 350
            ),
              height: 70,
                width:isPressed ? 200    : 140,
                decoration: BoxDecoration(
                  color: isPressed ?  Colors.green   : Colors.blue,
                  borderRadius: isPressed ?   BorderRadius.circular(30)   : BorderRadius.circular(8)
                ),
                child: MaterialButton(onPressed: (){
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: Text( isPressed ?  "Pressed!"  :  "Press Me",
                style: TextStyle(color: Colors.white,
                fontSize: 25,
                  fontWeight: FontWeight.w500
                ),

                ),
                )),
          MaterialButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RedScreen(),));
          },
            child: Text("Go to Red",
              style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
              ),

            ),
          )
          ],
        ),
      ),
    );
  }
}


class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
