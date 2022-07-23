import 'package:flutter/material.dart';
import 'package:fluttertask/data/network/all_const.dart';
import 'package:get/get.dart';

import '../../data/model/popular_person_model.dart';
import '../../data/network/apis/popular_person_api.dart';
import '../../data/repo/api_repo.dart';

class HomeController extends GetxController{

  ScrollController scrollController = ScrollController();
  List<Results>populars=[];

  int page = 1;
  APIRepo _apiRepo=APIRepo();

getppp(){

  _apiRepo.getAllPopularPerson(page: page).then((value) {
    populars.addAll(value);
    update();
  });
}


  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);

    getppp();
  }



  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      page++;

      getppp();

    }
    if (scrollController.offset <= scrollController.position.minScrollExtent &&
        !scrollController.position.outOfRange) {
      print("reach the top");
    }
  }

}