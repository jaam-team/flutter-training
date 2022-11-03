import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.username,
    required this.email,
  
  });
  String username;
  String email;


  factory Post.fromMap(Map<String, dynamic> json) => Post(
         username: json["username"],
         email: json["email"],
       );
}
