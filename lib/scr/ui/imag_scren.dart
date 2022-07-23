import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/popular_images.dart';
import '../controller/image_scr_controller.dart';

class ImageScreen extends GetView<ImageScrController> {



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Stack(
      children: [
          Container(
            height:controller. profiles!.height!.toDouble(),
            width:controller. profiles!.width!.toDouble(),    decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(controller.profiles!.filePath!)),
            borderRadius: BorderRadius.circular(10),
          )
          )
      ],
    ),
        ));
  }
}
