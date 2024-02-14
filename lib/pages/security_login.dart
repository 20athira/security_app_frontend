import 'package:flutter/material.dart';
import 'package:security_app_backend/pages/add_visitor.dart';
import 'package:security_app_backend/pages/viewsecurity.dart';
import 'package:security_app_backend/service/security_service.dart';
class seclog extends StatefulWidget {
  const seclog({super.key});

  @override
  State<seclog> createState() => _seclogState();
}

class _seclogState extends State<seclog> {
  String email="",password="";
  TextEditingController  emailo =new TextEditingController();
  TextEditingController  passwordo =new TextEditingController();

  void  SendValue() async{
    final response = await SecApiService().loginapi(emailo.text, passwordo.text);
    if(response["status"]=="sucess"){
      print("successful");
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
    }
    else if(response['status']=='Invalid user'){
      print("Invalid user");
    }
    else if(response['status']=='Invalid Password'){
      print("Invalid password");
    }
  }


      @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(0.5),
          title: Text("Add security",
            style: TextStyle(color: Colors.white),),
        ),
        body: Container(
          color: Colors.blue.withOpacity(0.5),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailo,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter email",
                    labelText: "Email",
                    fillColor: Colors.grey[100],
                    filled: true
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: passwordo,
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addvis( )));
                    }, child: Text("security login")),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
