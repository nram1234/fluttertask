import 'package:get/get.dart';

import '../../data/model/popular_images.dart';
import '../../data/model/popular_person_model.dart';
import '../../data/network/all_const.dart';
import '../../data/network/apis/images_api.dart';

class DetailsController extends GetxController{
  Results? results;
  ImagesAPI _imagesAPI =ImagesAPI();
  PopularImages? popularImages;


  getdata({required int id}){
    _imagesAPI.data="/$id/images?api_key=${AllConst.api_key}";
print(_imagesAPI.apiUrl());
    _imagesAPI.getData().then((value) {
      popularImages=value as PopularImages;
      update();
    });
  }
}