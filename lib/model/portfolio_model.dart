class PortfolioModel {
  String? avatar;
  String? name;
  String? birthday;
  String? background;
  PortfolioModel({this.avatar,this.birthday,this.name,this.background});

  factory PortfolioModel.fromJson(Map<String, dynamic> json) {
    return PortfolioModel(
        name: json['name'],
        avatar: json['image'],
        birthday: json['countMembers'],
        background:json['background']
    );
  }
}