import 'dart:convert';

List<Teams> teamModelFromJson(String str) =>
    List<Teams>.from(
        json.decode(str).map((x) => Teams.fromJson(x))
      );

String teamModelToJson(List<Teams> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => x.toJson())
      )
    );

class Teams {
  int id;
  String name;
  String flag;

  Teams({
    required this.id, 
    required this.name, 
    required this.flag
    });

  factory Teams.fromJson(Map<String, dynamic> json) => Teams(
        id: json["Tim_Codigo"],
        name: json["Tim_Nome"],
        flag: json["Tim_Bandeira"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "flag": flag,
      };
}
