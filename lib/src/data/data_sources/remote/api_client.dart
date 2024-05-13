import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sample_1/src/data/data_sources/remote/api_constants.dart';
import 'package:sample_1/src/data/data_sources/remote/api_exception.dart';
import 'package:sample_1/src/utils/shared_preference.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstants.baseUrl);
    dio = Dio(baseOptions);
    dio.interceptors.add(PrettyDioLogger());
  }

  ///GET REQUEST
  Future<Response> getRequest({required String path}) async {
    try {
      var response = await dio.get(path);
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiException(message: e.response!.statusMessage);
      } else {
        throw ApiException(message: e.message);
      }
    }
  }

  ///POST REQUEST
  Future<Response> postRequest({required String path,  dynamic body}) async {
    // Map body = {
    //   "title": "title-1",
    //   "slug": "slug-1",
    // };
   String token=await SharedPreferenceData.getToken();
    final options = Options(
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    try {
      var response = await dio.post(
        path,
        data: body,
        options: options,
      );

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiException(message: e.response!.statusMessage);
      } else {
        throw ApiException(message: e.message);
      }
    }
  }
}
