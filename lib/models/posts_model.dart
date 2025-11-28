class PostsModel {
  int? id;
  int? userId;
  String? title;
  String? body;
  PostsModel({this.body, this.id, this.userId, this.title});
  PostsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    body = json['body'];
  }
  Map<String, dynamic> toJson() {
    return {"userId": userId, "id": id, "title": title, "body": body};
  }
}
