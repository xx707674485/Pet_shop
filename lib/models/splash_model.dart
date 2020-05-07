class SplashModel {
  String id;
  String content;
  String imageUrl;
  String title;
  String url;

  SplashModel({this.id, this.content, this.imageUrl, this.title, this.url});

  SplashModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    imageUrl = json['imageUrl'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}