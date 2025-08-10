import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/function/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> PostData(
    String url,
    Map<String, dynamic> data,
  ) async {
    try {
      if (await ChekInternet()) {
        http.Response response = await http.post(Uri.parse(url), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return Left(StatusRequest.severfailer);
        }
      } else {
        return Left(StatusRequest.internetfailer);
      }
    } catch (e) {
      print("heloooo Exception: $e");
      return Left(StatusRequest.failer);
    }
  }

  Future<Either<StatusRequest, Map>> GetData(String url) async {
    try {
      if (await ChekInternet()) {
        print("✅ Connected to internet");
        print("📡 Sending request to: $url");
        http.Response response = await http.post(Uri.parse(url));
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return Left(StatusRequest.severfailer);
        }
      } else {
        return Left(StatusRequest.internetfailer);
      }
    } catch (e) {
      print("heloooo Exception: $e");
      return Left(StatusRequest.failer);
    }
  }
}
