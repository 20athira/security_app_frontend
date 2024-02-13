import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.5),
        title: Text("Login page",
        style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.blue.withOpacity(0.5),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailObj,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter name",
                  labelText: "name",
                  fillColor: Colors.grey[100],
                  filled: true
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: passwordObj,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter password",
                  labelText: "Password",
                  fillColor: Colors.grey[100],
                  filled: true
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
                width: 310,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)
                        )
                    ),
                    onPressed:SendValue,
                    child: Text("LOGIN"))),
            SizedBox(height: 30,),
            SizedBox(
              width: 310,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>signUpPage()));
                  }, child: Text("Security click here")),
            ),
          ],
        ),
      ),


    );
  }
}
