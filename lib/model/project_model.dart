class ProjectModel {
  String? name;
  String? image;
  int? countMembers;
  String? description;
  String? role;
  List<String>? technologies;
  String? state;
  String? google;
  String? ios;
  ProjectModel(
      {this.name,
      this.image,
      this.countMembers,
        this.google,this.ios,
      this.description,
        this.state,
      this.role,
      this.technologies});

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    List<String>? tech = [];
    for(final data in json['technologies'] as List){
      tech.add(data);
    }
    return ProjectModel(
      name: json['name'],
      image: json['image'],
      google: json['google'],
      ios: json['ios'],
      countMembers: json['countMembers'],
      description: json['description'],
      role: json['role'],
      technologies: tech,
      state: json['state']
    );
  }
}
