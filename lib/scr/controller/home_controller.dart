import 'package:flutter/material.dart';
import 'package:fluttertask/data/network/all_const.dart';
import 'package:fluttertask/objectbox.g.dart';
import 'package:get/get.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/cor/stor_singleton.dart';
import '../../data/model/popular_person_model.dart';
import '../../data/network/apis/popular_person_api.dart';
import '../../data/repo/api_repo.dart';
import '../../data/repo/local_repo.dart';
import '../../main.dart';

class HomeController extends GetxController{

  ScrollController scrollController = ScrollController();
  List<Results>populars=[];

  int page = 1;
  APIRepo _apiRepo=APIRepo();


getData(){


  _apiRepo.getAllPopularPerson(page: page).then((value) {

    populars.addAll(value);

    update();
    value.forEach((element) {
      objectbox.store.box<Results>().put(element);

    });

  });
}

getData2()async{

  LocalRepo localRepo =LocalRepo( );

  localRepo.getAllPopularPerson(page: page).then((value) {

    populars.addAll(value);

    update();

  });
}

  @override
  void onInit() {
    super.onInit();
    // getApplicationDocumentsDirectory().then((value) {
    //   _store=Store(getObjectBoxModel(),directory:"${value.path}/objectbox" );
    //
    // });




    scrollController.addListener(_scrollListener);


    getData2();
  }


@override
  void onClose() {



  super.onClose();
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      page++;

   getData();

    }
    if (scrollController.offset <= scrollController.position.minScrollExtent &&
        !scrollController.position.outOfRange) {
      print("reach the top");
    }
  }

}