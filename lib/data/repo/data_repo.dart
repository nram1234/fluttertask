import '../model/cor/abstract_json_resource.dart';

abstract class DataRepository{
  Future <List<AbstractJsonResource>?>getAllPopularPerson();
  Future < AbstractJsonResource?>getPopularPersonById();

}