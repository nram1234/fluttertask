import 'dart:typed_data';

import 'package:dio/dio.dart';

import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
//import 'package:permission_handler/permission_handler.dart';

import '../../data/model/popular_images.dart';

class ImageScrController extends GetxController{
  Profiles? profiles;
saveImage()async{

  // var writeStatus=await Permission.storage.status;
  // if(!writeStatus.isGranted){
  //   Permission.storage.request();
  // }
  var response = await Dio().get(
      "https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a62e824376d98d1069d40a31113eb807/838ba61ea8d3fd1fc9c7b6853a4e251f94ca5f46.jpg",
      options: Options(responseType: ResponseType.bytes));
  final result = await ImageGallerySaver.saveImage(
      Uint8List.fromList(response.data),
      quality: 60,
      name: "hello");
  print(result);
}

}