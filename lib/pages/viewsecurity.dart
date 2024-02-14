import 'package:flutter/material.dart';
import 'package:security_app_backend/models/security_model.dart';
import 'package:security_app_backend/service/security_service.dart';

class viewsec extends StatefulWidget {
  const viewsec({super.key});

  @override
  State<viewsec> createState() => _viewsecState();
}

class _viewsecState extends State<viewsec> {
  Future<List<Security>> ? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=SecApiService().getAddsec();

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.5),
    title: Text("View Security",
    style: TextStyle(color: Colors.white),),
    ),
          body: FutureBuilder(
              future:data ,
              builder: (context,snapshot){
                if(snapshot.hasData &&snapshot.data!.isNotEmpty){
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (value,index){
                        return Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(snapshot.data![index].name),
                                subtitle: Text(snapshot.data![index].empid+ "\n"
                                    + snapshot.data![index].address+
                                    "\n"+snapshot.data![index].mobile+"\n"+snapshot.data![index].email+"\n"+snapshot.data![index].password
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  );
                }
                else{
                  return Text("Fetching data");
                }
              }
              )

      ),
    );
  }
}
