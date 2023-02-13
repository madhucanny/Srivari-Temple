class TempleHistoryModel {
  String? image;
  String? name;
  String? details;
  String? phone;
  String? email;
  String? website;
  String? history;
  List<String>? templeImages;
  String? address;
  String? latitude;
  String? longitude;

  TempleHistoryModel(
      {this.image,
      this.name,
      this.details,
      this.phone,
      this.email,
      this.website,
      this.history,
      this.templeImages,
      this.address,
      this.latitude,
      this.longitude});

  TempleHistoryModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    details = json['details'];
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    history = json['history'];
    templeImages = json['temple_images'].cast<String>();
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['details'] = this.details;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['website'] = this.website;
    data['history'] = this.history;
    data['temple_images'] = this.templeImages;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
