
// ignore_for_file: file_names

class DeptName {
 late int id;
 late String name;

  DeptName({required this.id, required this.name});

  DeptName.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}