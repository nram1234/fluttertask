import 'package:fluttertask/data/model/cor/abstract_json_resource.dart';

import '../model/popular_person_model.dart';
import '../network/all_const.dart';
import '../network/apis/popular_person_api.dart';
import 'data_home_repo.dart';

class APIRepo extends DataRepository{
  @override
  Future<List<Results>> getAllPopularPerson({required int page})async {
    List<Results>populars=[];
    PopularPersonAPI  personAPI=PopularPersonAPI();
    PopularPersonModel? popularPersonModel;

    personAPI.data="?api_key=${AllConst.api_key}&language=en-US&page=$page";

  await   personAPI.getData().then((value) {
      popularPersonModel=value as PopularPersonModel;
      popularPersonModel?.results?.forEach((element) {


        populars.add(element);

      });
    });
 return populars;
  }



}