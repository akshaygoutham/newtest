// To parse this JSON data, do
//
//     final listCategory = listCategoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ListCategory> listCategoryFromJson(String str) => List<ListCategory>.from(
    json.decode(str).map((x) => ListCategory.fromJson(x)));

String listCategoryToJson(List<ListCategory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListCategory {
  ListCategory({
    this.name,
    this.shortName,
    this.description,
    this.parentId,
    this.image,
    this.subCategory,
    this.recordCount,
    this.id,
  });

  String? name;
  String? shortName;
  String? description;
  int? parentId;
  String? image;
  List<ListCategory>? subCategory;
  int? recordCount;
  int? id;

  factory ListCategory.fromJson(Map<String, dynamic> json) => ListCategory(
        name: json["name"],
        shortName: json["shortName"],
        description: json["description"],
        parentId: json["parentId"] == null ? null : json["parentId"],
        image: json["image"],
        subCategory: List<ListCategory>.from(
            json["subCategory"].map((x) => ListCategory.fromJson(x))),
        recordCount: json["recordCount"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "shortName": shortName,
        "description": description,
        "parentId": parentId == null ? null : parentId,
        "image": image,
        "subCategory": List<dynamic>.from(subCategory!.map((x) => x.toJson())),
        "recordCount": recordCount,
        "id": id,
      };
}
