import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class ApiServiceHttp {

  Future<Map<String, dynamic>> get(
      {required String uri, @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Brear $token'});
    }
    http.Response response = await http.get(Uri.parse(uri), headers: headers);

    if (response.statusCode == 200) {

      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there Is a Proplem in Statue Code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String uri,
        @required dynamic body,
        @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Brear $token'});
    }
    http.Response response =
    await http.post(Uri.parse(uri), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
          'there is error in stutes code ${response.statusCode} with body ${response.body}');
    }
  }

  Future<dynamic> put(
      {required String uri,
        @required dynamic body,
        @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Content-Type': 'multipart/form-data'});

      http.Response response =
      await http.put(Uri.parse(uri), body: body, headers: headers);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception(
            'there is error in stutes code ${response.statusCode} with body ${response.body}');
      }
    }
  }}


