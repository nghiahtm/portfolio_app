class ProjectModel {
  String? name;
  String? image;
  int? countMembers;
  String? description;
  String? role;
  List<String>? technologies;
  List<String>? images;
  String? state;
  String? google;
  String? ios;

  ProjectModel(
      {this.name,
      this.image,
      this.countMembers,
      this.google,
      this.ios,
      this.description,
      this.state,
        this.images,
      this.role,
      this.technologies});

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    List<String>? tech = [];
    for (final data in json['technologies'] as List) {
      tech.add(data);
    }
    List<String>? images = [];
    if(json['images'] != null){
      for (final image in json['images'] as List) {
        images.add(image);
      }
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
        images:images??null,
        state: json['state']);
  }
}
