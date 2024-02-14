import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:security_app_backend/models/security_model.dart';
import 'package:security_app_backend/pages/addsec.dart';

class SecApiService {
  Future<dynamic> loginapi(
      String email,
      String password

      ) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://172.16.180.84:3001/api/security/signin");

    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String, String>
        {
          "email": email,
          "password": password
        })

    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("failed to send data");
    }
  }


  Future<dynamic> sendData(
      String name,
      String empid,
      String address,
      String mobile,
      String email,
      String password

      ) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://172.16.180.84:3001/api/security/signin");

    var response = await client.post(apiUrl,
        headers: <String, String>{
        "Content-Type": "application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String, String>
    {

        "name": name,
        "empid": empid,
        "address": address,
        "mobile": mobile,
        "email": email,
          "password": password
        })

    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("failed to send data");
    }
  }

  Future<List<Security>> getAddsec() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.180.84:3001/api/security/view");
    var response = await client.get(apiUrl);
    if(response.statusCode==200){
      return securityFromJson(response.body);
    }
    else{
      return[];
    }
    }
  }
