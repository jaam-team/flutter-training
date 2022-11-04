class UserDetails{
  final int id;
  final String name;
  
  final String email;
  UserDetails({required this.id,required this.name,required this.email});
  factory UserDetails.fromJson(Map<String,dynamic> json){
 return UserDetails(id:json['id'],name:json['name'], 
 email: json['email']);
  }
}