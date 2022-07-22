import 'package:flutter/material.dart';

import '../../data/model/popular_images.dart';

class ImageScreen extends StatelessWidget {
  Profiles? profiles;

  ImageScreen({  this.profiles});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Stack(
      children: [
          Container(
            height: profiles!.height!.toDouble(),
            width: profiles!.width!.toDouble(),    decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(profiles!.filePath!)),
            borderRadius: BorderRadius.circular(10),
          )
          )
      ],
    ),
        ));
  }
}
