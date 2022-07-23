import 'package:fluttertask/data/model/popular_person_model.dart';
import 'package:fluttertask/data/repo/data_home_repo.dart';
import 'package:fluttertask/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

class LocalRepo extends DataRepository{
  final store;

  LocalRepo({required this.store});

  @override
  Future<List<Results>> getAllPopularPerson({required int page})async {
    List<Results>data=[];
 data=  store.box<Results>().query( ) as List<Results>;

    return data;

  }

}