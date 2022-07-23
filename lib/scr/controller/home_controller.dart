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
import '../../utilitie/utilitie.dart';

class HomeController extends GetxController{

  ScrollController scrollController = ScrollController();
  List<Results>populars=[];

  int page = 1;
  APIRepo _apiRepo=APIRepo();
  bool? isConnect ;


getData(){


  _apiRepo.getAllPopularPerson(page: page).then((value) {

    populars.addAll(value);

    update();
    for (var element in value) {
      objectbox.store.box<Results>().put(element);

    }

  });
}

getData2()async{

  LocalRepo localRepo =LocalRepo( );

  localRepo.getAllPopularPerson(page: page).then((value) {

    populars.addAll(value);

    update();

  });
}
getdatatolist()async{



  if( isConnect??false ){
    getData();
  }else{
    getData2();
  }
}

  getcon()async{
    isConnect=await getconction();

  }

  @override
  void onInit() {
    super.onInit();
    getcon();


    scrollController.addListener(_scrollListener);

    getdatatolist();
  }




  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      page++;
if(   isConnect??false){
  getData();
}


    }
    if (scrollController.offset <= scrollController.position.minScrollExtent &&
        !scrollController.position.outOfRange) {
      print("reach the top");
    }
  }

}