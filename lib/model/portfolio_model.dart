class PortfolioModel {
  String? avatar;
  String? name;
  String? birthday;
  String? background;
  List<String>? experience;
  List<String>? target;

  PortfolioModel(
      {this.avatar,
      this.birthday,
      this.name,
      this.background,
        this.target,
      this.experience});

  factory PortfolioModel.fromJson(Map<String, dynamic> json) {
    final experience = <String>[];
    for (final exp in (json['experience'] as List)) {
      experience.add(exp);
    }
    List<String>? target = [];
    for(final data in json['targer'] as List){
      target.add(data);
    }
    return PortfolioModel(
        name: json['name'],
        avatar: json['avatar'],
        birthday: json['birthday'],
        background: json['background'],
        target: target,
        experience: experience);
  }
}
