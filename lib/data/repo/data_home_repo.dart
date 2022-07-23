import '../model/cor/abstract_json_resource.dart';
import '../model/popular_person_model.dart';

abstract class DataRepository{
  Future <List<Results>>getAllPopularPerson({required int page});


}