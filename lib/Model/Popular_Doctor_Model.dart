// ignore_for_file: file_names

class PopularDoctorModel {
 late int id;
 late String name;
 late String depName;
 late String image;
 late String avgRating;

  PopularDoctorModel(
      {required this.id, required this.name, required this.depName, required this.image, required this.avgRating});

  PopularDoctorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    depName = json['dep_name'];
    image = json['image'];
    avgRating = json['avg_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['dep_name'] = depName;
    data['image'] = image;
    data['avg_rating'] = avgRating;
    return data;
  }
}
