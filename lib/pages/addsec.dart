import 'package:flutter/material.dart';
import 'package:security_app_backend/pages/add_visitor.dart';
import 'package:security_app_backend/service/security_service.dart';

class addsec extends StatefulWidget {
  const addsec({super.key});

  @override
  State<addsec> createState() => _addsecState();
}

class _addsecState extends State<addsec> {
  String name="",empid="",address="",mobile="",email="",pass="";
  TextEditingController name1=new TextEditingController();
  TextEditingController empid1=new TextEditingController();
  TextEditingController address1=new TextEditingController();
  TextEditingController mobile1=new TextEditingController();
  TextEditingController email1=new TextEditingController();
  TextEditingController pass1=new TextEditingController();
  void add() async{
    final response= await SecApiService().sendData(name1.text, empid1.text, address1.text, mobile1.text, email1.text, pass1.text);
    if (response["status"] == "success") {

      print("Successfully added");

    }
    else{
      print("error");
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
                  controller: name1,
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
                  controller: empid1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter empid",
                      labelText: "empid",
                      fillColor: Colors.grey[100],
                      filled: true
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: mobile1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter mobile",
                      labelText: "mobile",
                      fillColor: Colors.grey[100],
                      filled: true
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: address1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter address",
                      labelText: "address",
                      fillColor: Colors.grey[100],
                      filled: true
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: email1,
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
                  controller: pass1,
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
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>addvis()));
                      }, child: Text("Add security")),
                ),
              ],
            ),
          ),


        ),
    );
  }
}
