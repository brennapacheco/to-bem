class MoviesModel {
  String? _id;
  String? _title;
  String? _image;
  String? _description;

  MoviesModel(
      {String? id,
      String? title,
      String? image,
      String? description,
      }) {
    if (id != null) {
      _id = id;
    }
    if (title != null) {
      _title = title;
    }
    if (image != null) {
      _image = image;
    }
    if (description != null) {
      _description = description;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get description => _description;
  set description(String? description) => _description = description;
 

  MoviesModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'] as String?;
    _title = json['title'] as String?;
    _image = json['image'] as String?;
    _description = json['description'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = _id;
    data['title'] = _title;
    data['image'] = _image;
    data['description'] = _description;
    return data;
  }
}
