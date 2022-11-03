class StudentModel{
  final int author_id;
  final int id;
  final String title;
  StudentModel({required this.author_id,required this.id,required this.title});
  factory StudentModel.fromJson(Map<String,dynamic> json){
 return StudentModel(author_id:json['author_id'], id:json['id'],
 title: json['title']);
  }
}
 