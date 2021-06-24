import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  //Constructor sintaxe:
  UserModel({required this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(name: map['name'], photoURL: map['photoURL']);

  factory UserModel.fromJson(String json) => UserModel.fromMap(jsonDecode(json));
  
  Map<String, dynamic> toMap() => {"name": this.name, "photoURL": this.photoURL};

  String toJson() => jsonEncode(toMap());

  
}
