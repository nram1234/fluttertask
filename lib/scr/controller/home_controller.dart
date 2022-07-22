import 'package:flutter/material.dart';
import 'package:fluttertask/data/network/all_const.dart';
import 'package:get/get.dart';

import '../../data/model/popular_person_model.dart';
import '../../data/network/apis/popular_person_api.dart';

class HomeController extends GetxController{
  PopularPersonAPI  personAPI=PopularPersonAPI();
  PopularPersonModel? popularPersonModel;
  ScrollController scrollController = ScrollController();
  List<Results>populars=[];






  bool haveMoreData = true;
  int page = 1;
getdata({required int page}){
  personAPI.data="?api_key=${AllConst.api_key}&language=en-US&page=$page";

  personAPI.getData().then((value) {
    popularPersonModel=value as PopularPersonModel;
    popularPersonModel?.results?.forEach((element) {


      populars.add(element);
      update();
    });
  });
}

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
 getdata(page: page);
  }



  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      page++;
      getdata(page: page);

    }
    if (scrollController.offset <= scrollController.position.minScrollExtent &&
        !scrollController.position.outOfRange) {
      print("reach the top");
    }
  }

}