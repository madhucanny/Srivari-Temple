class TempleTimingModel {
  String? title;
  List<Timings>? timings;

  TempleTimingModel({this.title, this.timings});

  TempleTimingModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['timings'] != null) {
      timings = <Timings>[];
      json['timings'].forEach((v) {
        timings!.add(new Timings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.timings != null) {
      data['timings'] = this.timings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Timings {
  String? subTitle;
  String? startTime;
  String? endTime;

  Timings({this.subTitle, this.startTime, this.endTime});

  Timings.fromJson(Map<String, dynamic> json) {
    subTitle = json['sub_title'];
    startTime = json['start_time'];
    endTime = json['end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_title'] = this.subTitle;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    return data;
  }
}
