class TempleListModel {
  String? image;
  String? name;
  String? details;
  String? phone;
  String? email;
  String? website;

  TempleListModel(
      {required this.image,
      this.name,
      this.details,
      this.phone,
      this.email,
      this.website});

  TempleListModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    details = json['details'];
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['details'] = this.details;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['website'] = this.website;
    return data;
  }
}
