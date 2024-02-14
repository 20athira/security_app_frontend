import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:security_app_backend/pages/security_click.dart';
import 'package:security_app_backend/pages/security_login.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  @override
  String getname="admin",getpass="123";
  TextEditingController name=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.5),
        title: Text("Login Admin",
        style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.blue.withOpacity(0.5),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('Convertible-car.svg',height: 100,width: 100,),
            TextField(
              controller: name,
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
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter password",
                  hintStyle: TextStyle(color: Colors.black),
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
                    onPressed:(){
                      String entername=name.text;
                      String enterpass=pass.text;
                      String enteredName = name.text;
                      String enteredPassword = pass.text;
                      if(getname==entername && getpass==enterpass){
                        print("successfully login");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>logmenu()));
                      }
                      else
                      {
                        print("error");
                      }

                    },
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>seclog()));
                  }, child: Text("Security click here")),
            ),
          ],
        ),
      ),


    );
  }
}
