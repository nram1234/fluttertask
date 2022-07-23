import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../controller/details_controller.dart';
import '../controller/image_scr_controller.dart';
import 'imag_scren.dart';

class Details extends GetView<DetailsController> {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,children: [
              IntrinsicHeight(
                child: Row(
                  children: [Expanded(child: Container(height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(controller.results!.profilePath!)),
                      borderRadius: BorderRadius.circular(10),
                    ),)),SizedBox(width: 4,),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Name : ${controller.results!.name}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Name : ${controller.results!.adult! ? "adult" : "kid"}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child:
                              Text("Gender : ${controller.results!.gender! == 0 ? "Male" : "Female"}"),
                            ),


                          ]),
                    ),
                  ],
                ),
              )
           ,   SizedBox(height: 8,)
          ,GetBuilder<DetailsController>(builder: (logic) {
            return logic.popularImages == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: GridView.builder(
                    itemCount: logic.popularImages?.profiles?.length,
                    padding: EdgeInsets.all(4),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(onTap:(){
                          print("llllllllllllllllllllllllll");
                          Get.find<ImageScrController>().profiles=logic.popularImages?.profiles![index];
                          Get.to(()=>ImageScreen( ));
                        } ,
                          child: Container(
                              height: logic.popularImages!.profiles![index].height!
                                  .toDouble(),
                              width: logic.popularImages!.profiles![index].width!
                                  .toDouble(),
                              decoration: BoxDecoration(
                                // image: DecorationImage(
                                //     fit: BoxFit.fill,
                                //     image:
                                //
                                //
                                //
                                //     NetworkImage(logic
                                //         .popularImages!.profiles![index].filePath!)
                                //
                                // ),
                                borderRadius: BorderRadius.circular(10),
                              ),child: CachedNetworkImage(height:logic.popularImages!.profiles![index].height!
                              .toDouble() ,width: logic.popularImages!.profiles![index].width!
                              .toDouble() ,
                            imageUrl: logic
                                .popularImages!.profiles![index].filePath!,
                            placeholder: (context, url) => CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                          )),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                  ));
          })
        ]),
      ),
    );
  }
}
