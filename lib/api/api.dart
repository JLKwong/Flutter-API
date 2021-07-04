class CatFacts {
  //remember to use ? for null safety
  Status? status;
  String? type;
  bool? deleted;
  String? sId;
  String? user;
  String? text;
  int? iV;
  String? source;
  String? updatedAt;
  String? createdAt;
  bool? used;
  CatFacts(
      {this.status,
        this.type,
        this.deleted,
        this.sId,
        this.user,
        this.text,
        this.iV,
        this.source,
        this.updatedAt,
        this.createdAt,
        this.used});
  CatFacts.fromJson(Map<String, dynamic> json) {
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    type = json['type'];
    deleted = json['deleted'];
    sId = json['_id'];
    user = json['user'];
    text = json['text'];
    iV = json['__v'];
    source = json['source'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    used = json['used'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status!.toJson(); //! for null safety
    }
    data['type'] = this.type;
    data['deleted'] = this.deleted;
    data['_id'] = this.sId;
    data['user'] = this.user;
    data['text'] = this.text;
    data['__v'] = this.iV;
    data['source'] = this.source;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    data['used'] = this.used;
    return data;
  }
}
class Status {
  late bool? verified;
  late int? sentCount;
  Status({this.verified, this.sentCount});
  Status.fromJson(Map<String, dynamic> json) {
    verified = json['verified'];
    sentCount = json['sentCount'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['verified'] = this.verified;
    data['sentCount'] = this.sentCount;
    return data;
  }
}