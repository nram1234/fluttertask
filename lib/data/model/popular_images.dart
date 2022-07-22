import 'package:fluttertask/data/model/cor/abstract_json_resource.dart';

class PopularImages extends AbstractJsonResource{
  int? id;
  List<Profiles>? profiles;

  PopularImages({this.id, this.profiles});

  PopularImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['profiles'] != null) {
      profiles = <Profiles>[];
      json['profiles'].forEach((v) {
        profiles!.add(new Profiles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.profiles != null) {
      data['profiles'] = this.profiles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Profiles {
  double? aspectRatio;
  int? height;

  String? filePath;
  double? voteAverage;
  int? voteCount;
  int? width;

  Profiles(
      {this.aspectRatio,
        this.height,

        this.filePath,
        this.voteAverage,
        this.voteCount,
        this.width});

  Profiles.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspect_ratio'];
    height = json['height'];

    filePath ="http://image.tmdb.org/t/p/w500${json['file_path']}" ;
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aspect_ratio'] = this.aspectRatio;
    data['height'] = this.height;

    data['file_path'] = this.filePath;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    data['width'] = this.width;
    return data;
  }
}
