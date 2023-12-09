class NotificationDetailsModel {
  NotificationDetailsData? data;
  List<String>? message;
  int? status;

  NotificationDetailsModel({this.data, this.message, this.status});

  NotificationDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? NotificationDetailsData.fromJson(json['data']) : null;
    message = json['message'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class NotificationDetailsData {

  int? id;
  String? title;
  String? type;
  String? text;
  String? date;
  int? foreignId;
  String? link;

  NotificationDetailsData({this.id, this.title, this.type, this.text, this.date, this.foreignId,this.link});

  NotificationDetailsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    text = json['text'];
    date = json['date'];
    foreignId = json['foreign_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['type'] = type;
    data['text'] = text;
    data['date'] = date;
    data['foreign_id'] = foreignId;
    return data;
  }
}