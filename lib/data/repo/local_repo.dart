import 'package:fluttertask/data/model/popular_person_model.dart';
import 'package:fluttertask/data/repo/data_home_repo.dart';


import '../../main.dart';


class LocalRepo extends DataRepository{


  @override
  Future<List<Results>> getAllPopularPerson({required int page})async {

   List<Results>data=[];
   data=  objectbox.store.box<Results>().query( ).build().find()  ;
 print(data.length);
    return data;

  }

}