import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/details_controller.dart';
import '../controller/home_controller.dart';
import '../widget/popular_list_item.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<HomeController>(builder: (logic) {
        return logic.populars.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(controller: controller.scrollController,
                itemCount: logic.populars.length,
                itemBuilder: (context, pos) {
                  return InkWell(onTap: (){
                    Get.find<DetailsController>().results=logic.populars[pos];
                    Get.find<DetailsController>().getdata(id: logic.populars[pos].idResults!);
                    Get.toNamed("Details");
                  },
                    child: PopularListItem(
                      results: logic.populars[pos],
                    ),
                  );
                });
      }),
    );
  }
}
