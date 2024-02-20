
class UserModel {
  final  appUserId;
  final  name;
 
  UserModel({
    required this.appUserId,
    required this.name,
  });
  
  //CREATE USER FROM JSON

  factory UserModel.fromJson(Map<String, dynamic> json) {
    if(json.containsKey('appUserId')){
      return UserModel(
        appUserId: json['appUserId'],
        name: json['name']);
        
    }else{
      throw const FormatException("Failed to load User");
    }
    
  }

}