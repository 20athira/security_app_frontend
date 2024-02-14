import 'package:flutter/material.dart';
import 'package:security_app_backend/service/security_service.dart';
import 'package:security_app_backend/service/visitor_service.dart';
class addvis extends StatefulWidget {
  const addvis({super.key});

  @override
  State<addvis> createState() => _addvisState();
}

class _addvisState extends State<addvis> {
  TextEditingController name=new TextEditingController();
  TextEditingController purpose=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController phoneno=new TextEditingController();
  void add() async{
    final response= await visApiService().sendDataa(name.text, purpose.text, address.text, phoneno.text);
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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(0.5),
          title: Text("Add visitor",
            style: TextStyle(color: Colors.white),),
        ),
        body: Container(
          color: Colors.blue.withOpacity(0.5),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                controller: purpose,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter purpose",
                    labelText: "purpose",
                    fillColor: Colors.grey[100],
                    filled: true
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: phoneno,
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
                controller: address,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter address",
                    labelText: "address",
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
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>signUpPage()));
                    }, child: Text("Add visitor")),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
