import 'package:flutter/material.dart';

import '../../data/model/popular_person_model.dart';

class PopularListItem extends StatelessWidget {
  Results results;

  PopularListItem({required this.results});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicHeight(
            child: Row(
              children: [Expanded(child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(results.profilePath!)),
                  borderRadius: BorderRadius.circular(10),
                ),)),SizedBox(width: 4,),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Name : ${results.name}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Name : ${results.adult! ? "adult" : "kid"}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child:
                              Text("Gender : ${results.gender == 0 ? "Male" : "Female"}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("popularity : ${results.popularity == 0}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                              "known For Department : ${results.knownForDepartment}"),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
