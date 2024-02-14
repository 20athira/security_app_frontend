import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:security_app_backend/models/visitor_model.dart';


class visApiService {

  Future<dynamic> sendDataa(
  String name,
  String purpose,
  String phoneno,
  String address

      ) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://172.16.180.84:3001/api/visitor/add");

    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String, String>
        {

          "name": name,
          "purpose": purpose,
          "address": address,
          "phoneno": phoneno
        })

    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("failed to send data");
    }
  }

  Future<List<Visitor>> getAddvis() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.180.84:3001/api/visitor/view");
    var response = await client.get(apiUrl);
    if(response.statusCode==200){
      return visitorFromJson(response.body);
    }
    else{
      return[];
    }
  }
}
