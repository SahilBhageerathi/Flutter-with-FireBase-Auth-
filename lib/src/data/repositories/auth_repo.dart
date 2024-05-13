

import 'package:flutter/material.dart';
import 'package:sample_1/src/data/data_sources/remote/api_client.dart';
import 'package:sample_1/src/data/data_sources/remote/api_end_Points.dart';
import 'package:sample_1/src/data/models/login_request.dart';
import 'package:sample_1/src/data/models/login_response.dart';
import 'package:sample_1/src/data/models/logout_response.dart';

class AuthRepo extends ApiClient{

   login(String email,String password) async{
     Map loginRequest={
       "email":email,
       "password":password,
     };

    try {
      final response = await postRequest(path: ApiEndPoints.LOGIN,body: loginRequest);

      if(response.statusCode==200){
       print("user logged in");
       LoginResponse responseData=LoginResponse.fromJson(response.data);
        return responseData;
      }
      else {
        return null;
      }

    }on Exception catch(e){
      debugPrint(e.toString());
    }

  }

   logout() async{

     try {
       final response = await postRequest(path: ApiEndPoints.LOGOUT);

       if(response.statusCode==200){
         print("user logged out");
         LogoutResponse responseData=LogoutResponse.fromJson(response.data);
         return responseData;
       }
       else {
         return null;
       }

     }on Exception catch(e){
       debugPrint(e.toString());
     }

   }
}