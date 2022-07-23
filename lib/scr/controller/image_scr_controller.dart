import 'dart:typed_data';

import 'package:dio/dio.dart';

import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
//import 'package:permission_handler/permission_handler.dart';

import '../../data/model/popular_images.dart';

class ImageScrController extends GetxController{
  Profiles? profiles;
saveImage()async{

  var response = await Dio().get(
profiles!.filePath!
      ,
      options: Options(responseType: ResponseType.bytes));
  final result = await ImageGallerySaver.saveImage(
      Uint8List.fromList(response.data),
      quality: 100,
      name: "image");
  print(result);
}

}