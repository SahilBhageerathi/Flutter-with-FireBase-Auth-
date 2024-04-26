import 'package:flutter/material.dart';
import 'package:sample_1/src/data/data_sources/remote/api_client.dart';
import 'package:sample_1/src/data/data_sources/remote/api_end_Points.dart';

class TagsRepo extends ApiClient{

  getTags() async{

    try {
      final response = await getRequest(path: ApiEndPoints.GET_TAGS);

      if(response.statusCode==200){
        debugPrint("getTags request is success");
      }

    }on Exception catch(e){
      debugPrint(e.toString());
    }

  }
}