import 'package:flutter/cupertino.dart';

class Goods {
  int id;
  String title;
  String description;
  String location;
  String createdAt;
  int price;
  List<String> imageList;


  Goods({required this.id, required this.title, required this.description, required this.location, required this.createdAt,
    required this.price, required this.imageList});

  @override
  String toString() {
    return 'Goods{id: $id, title: $title, description: $description}';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  Goods fromMap(dynamic map) {
    var temp;
    id = map['name'];
    title = map['color'];
    description = map['description'];
    location = map['location'];
    createdAt = map['createdAt'];
    price = map['price'];
    imageList = map['imageList'];
    return Goods(id: id, title: title, description: description, location: location, createdAt: createdAt, price: price, imageList: imageList);
  }

  List<Goods> getList(dynamic map){
    var temp;
    return null == (temp = map['list'])
    ? []
    : (temp is List
    ? temp.map((map) => fromMap(map)).toList()
        : []);
  }
}
