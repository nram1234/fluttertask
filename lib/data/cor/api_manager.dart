import 'dart:convert';
import 'dart:developer';


import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../model/cor/abstract_json_resource.dart';
import 'dio_singleton.dart';




abstract class ApiManager {
  final DioSingleton dioSingleton = DioSingleton();
  //final _storge= a.Get.find<SecureStorage>();
  /// Returns the API URL of current API ressource
  String apiUrl();

  AbstractJsonResource fromJson(data);

  Future<AbstractJsonResource?> getData( ) async {

    AbstractJsonResource? json;
    var data;
    await dioSingleton.dio
        .get( apiUrl()    )
        .then((value) {

      print(value.statusCode);

         data = value.data;
        json = fromJson(value.data);
        //print(json);





    }).catchError((e){
      print(e);
     Get.snackbar("", e.toString());
    });


    return json;
  }


}
