class PriestsModel {
  String? name;
  String? image;
  String? mobile;
  String? designation;

  PriestsModel({this.name, this.image, this.mobile, this.designation});

  PriestsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    mobile = json['mobile'];
    designation = json['designation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['mobile'] = this.mobile;
    data['designation'] = this.designation;
    return data;
  }
}
