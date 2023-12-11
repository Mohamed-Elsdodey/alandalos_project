class MessageDetailsModel {
  MessageDetailsModelData? data;
  List<String>? message;
  int? status;

  MessageDetailsModel({this.data, this.message, this.status});

  MessageDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? MessageDetailsModelData.fromJson(json['data']) : null;
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

class MessageDetailsModelData {
  int? id;
  String? title;
  String? type;
  String? text;
  String? date;
  int? foreignId;
  Student? student;

  MessageDetailsModelData(
      {this.id,
        this.title,
        this.type,
        this.text,
        this.date,
        this.foreignId,
        this.student});

  MessageDetailsModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    text = json['text'];
    date = json['date'];
    foreignId = json['foreign_id'];
    student =
    json['student'] != null ? new Student.fromJson(json['student']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['text'] = this.text;
    data['date'] = this.date;
    data['foreign_id'] = this.foreignId;
    if (this.student != null) {
      data['student'] = this.student!.toJson();
    }
    return data;
  }
}

class Student {
  int? id;
  String? name;
  String? image;
  String? phone;
  int? positivePoint;
  int? negativePoint;
  int? totalPoint;
  int? numberOfViolations;
  int? newNotificationCount;
  int? schoolRank;
  int? rowRank;
  int? roomRank;

  Student(
      {this.id,
        this.name,
        this.image,
        this.phone,
        this.positivePoint,
        this.negativePoint,
        this.totalPoint,
        this.numberOfViolations,
        this.newNotificationCount,
        this.schoolRank,
        this.rowRank,
        this.roomRank});

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    phone = json['phone'];
    positivePoint = json['positive_point'];
    negativePoint = json['negative_point'];
    totalPoint = json['total_point'];
    numberOfViolations = json['number_of_violations'];
    newNotificationCount = json['new_notification_count'];
    schoolRank = json['school_rank'];
    rowRank = json['row_rank'];
    roomRank = json['room_rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['phone'] = this.phone;
    data['positive_point'] = this.positivePoint;
    data['negative_point'] = this.negativePoint;
    data['total_point'] = this.totalPoint;
    data['number_of_violations'] = this.numberOfViolations;
    data['new_notification_count'] = this.newNotificationCount;
    data['school_rank'] = this.schoolRank;
    data['row_rank'] = this.rowRank;
    data['room_rank'] = this.roomRank;
    return data;
  }
}