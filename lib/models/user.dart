class User {
  String uid;
  String name;
  String email;
  String profileImageUrl;
  String about;
  

  User({
    this.uid = "",
    this.name = "",
    this.email = "",
    this.profileImageUrl = "",
    this.about = "",
    
  });

  Map toMap(User user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uid;
    data['name'] = user.name;
    data['email'] = user.email;
    data["profileImageUrl"] = user.profileImageUrl;
    data["about"] = user.about;
    

    return data;
  }

  // Named constructor
  User.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'];
    this.name = mapData['name'];
    this.email = mapData['email'];
    this.profileImageUrl = mapData['profileImageUrl'];
    this.about = mapData['about'];
   
  }
}
