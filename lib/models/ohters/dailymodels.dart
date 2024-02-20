



import 'dart:convert';

List<Dates> DailyModelsFromJson(String str) => 
List<Dates>.from(json.decode(str).map((x) => Dates.fromJson(x)));

String userModelsToJson(List<Dates> data) =>
json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dates{
  late String score; //parameters
  late String date;
  late String name;

  Dates({
    required this.score,
    required this.name,
    required this.date
  });

  Dates.fromMap(Map<String, dynamic>? map){
    score = map?["score"].toString() ?? "";
    date = map?["date"].toString() ?? " ";
    name = map?["name"] ?? "";
  }

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
    score: json["score"], 
    name: json["name"], 
    date: json["date"]
    );

  Map<String, dynamic> toJson() => {
    "score":score,
    "name": name,
    "date": date
  };

}

