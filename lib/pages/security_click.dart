import 'package:flutter/material.dart';
import 'package:security_app_backend/pages/addsec.dart';
import 'package:security_app_backend/pages/view_visitor.dart';
import 'package:security_app_backend/pages/viewsecurity.dart';

class logmenu extends StatefulWidget {
  const logmenu({super.key});

  @override
  State<logmenu> createState() => _logmenuState();
}

class _logmenuState extends State<logmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.5),
        title: Text("Login Menu",
          style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.blue.withOpacity(0.5),
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addsec()));
                    },
                    child: Text("Add Security"))),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>viewsec()));
                  }, child: Text("Viewall Security")),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>viewvisi()));
                  }, child: Text("Viewall Visitor")),
            ),
          ],
        ),
      ),

    );
  }
}
