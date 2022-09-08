
import 'dart:convert';

import 'package:api_test/features/products/models/ProductModel.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:get/get_core/src/get_main.dart';


class RemoteServices{
  // static var client = http.Client();
  static Future<ProductModel?> fetchMainPoducts() async{
    List<ProductModel> _list = [];

    Response response;
    var dio = Dio();
    response = await dio.post('http://10.0.2.2/abzarapi/v1/firstpage', data: {'token': '', 'device_id': 'EMULATOR31X2X10X0','device_name': 'NEXUS 6 API 30','vandroid': '11','push_token': '',});

  try{
    if (response.statusCode == 200) {

      print('this is response');
      // print(response.data);


      return ProductModel.fromJson(response.data);

      }

    else {
      print('this is Error Message');

      return null;
    }
  }catch(e){
    Get.snackbar('can not get data', e.toString());
    return null;

  }


  }

}