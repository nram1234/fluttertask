import 'package:fluttertask/data/cor/api_manager.dart';
import 'package:fluttertask/data/model/cor/abstract_json_resource.dart';

import '../../cor/api_link.dart';
import '../../model/popular_person_model.dart';

class PopularPersonAPI extends ApiManager{
  String data="";
  @override
  String apiUrl() {
 return   APILink.popularPersonURL+data;
  }

  @override
  AbstractJsonResource fromJson(data) {
 return PopularPersonModel.fromJson(data);
  }

}