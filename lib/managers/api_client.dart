import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class ApiClient {
  ApiClient() {
    iniinitClient();
  }

  Dio _dio;
  static String uname = 'DEV19';
  static String pass = 'sap@gwy';
  static String _baseUrlDev = 'https://fiberappuntangle.herokuapp.com';

  String _basicAuth = 'Basic ' + base64Encode(utf8.encode('$uname:$pass'));

  void iniinitClient() {
    _dio = new Dio();
    _dio.options.baseUrl = _baseUrlDev;
    _dio.options.connectTimeout = 30000; //30s
    _dio.options.receiveTimeout = 1000000;
    _dio.options.headers = {
      HttpHeaders.acceptHeader: 'application/json',
//      HttpHeaders.authorizationHeader: _basicAuth,
      HttpHeaders.contentTypeHeader: 'application/json'
    };
//    _dio.onHttpClientCreate = (HttpClient client) {
//      client.badCertificateCallback =
//          (X509Certificate cert, String host, int port) {
//        return true;
//      };
//    };
    _dio.interceptor.response.onError = (DioError error) {
      return error.response;
    };
    _dio.interceptor.request.onSend = (Options options) {
      return options;
    };
  }

  //Login API call
  Future<Response> loginApi(Map<String, dynamic> body) {
    Options options = _dio.options;
    options.data = body;
    return _dio.post("/api/login/", options: options);
  }



}
