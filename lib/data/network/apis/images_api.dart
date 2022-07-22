import 'package:fluttertask/data/cor/api_manager.dart';
import 'package:fluttertask/data/model/cor/abstract_json_resource.dart';

import '../../cor/api_link.dart';
import '../../model/popular_images.dart';

class ImagesAPI extends ApiManager{
  String data="";
  @override
  String apiUrl() {
    return   APILink.imagesURL+data;
  }

  @override
  AbstractJsonResource fromJson(data) {
  return PopularImages.fromJson(data);
  }
  
}