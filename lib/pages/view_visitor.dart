import 'package:flutter/material.dart';
import 'package:security_app_backend/models/visitor_model.dart';
import 'package:security_app_backend/service/visitor_service.dart';

class viewvisi extends StatefulWidget {
  const viewvisi({super.key});

  @override
  State<viewvisi> createState() => _viewvisiState();
}

class _viewvisiState extends State<viewvisi> {
  Future<List<Visitor>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=visApiService().getAddvis();

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(0.5),
          title: Text("View visitor",
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
                                subtitle: Text(snapshot.data![index].purpose+ "\n"
                                    + snapshot.data![index].address+
                                    "\n"+snapshot.data![index].phoneno+"\n"+snapshot.data![index].address
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
