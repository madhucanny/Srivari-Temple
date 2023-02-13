class DeitiesModel {
  String? name;
  String? title;
  String? description;
  String? image;

  DeitiesModel({this.name, this.title, this.description, this.image});

  DeitiesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}
