import 'package:flutter/material.dart';
import 'package:sample_1/src/data/data_sources/remote/api_client.dart';
import 'package:sample_1/src/data/data_sources/remote/api_end_Points.dart';
import 'package:sample_1/src/data/models/tags.dart';

class TagsRepo extends ApiClient{

 Future<TagsModel?> getTags() async{

    try {
      final response = await getRequest(path: ApiEndPoints.GET_TAGS);

      if(response.statusCode==200){
        final responseData=TagsModel.fromJson(response.data);
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