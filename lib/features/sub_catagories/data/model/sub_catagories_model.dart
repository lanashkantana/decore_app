


import 'package:json_annotation/json_annotation.dart';

part 'sub_catagories_model.g.dart';
@JsonSerializable()
class SubCatagoriesModel {
    List<SubCatagoriesData>? data;
    SubCatagoriesLinks? links;
    SubCatagoriesMeta? meta;

    SubCatagoriesModel({this.data, this.links, this.meta});

   
  factory SubCatagoriesModel.fromJson(Map<String, dynamic> json) => _$SubCatagoriesModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SubCatagoriesModelToJson(this);
}
@JsonSerializable()
class SubCatagoriesMeta {
    int? currentPage;
    int? from;
    int? lastPage;
    List<SubCatagoriesLinks1>? links;
    String? path;
    int? perPage;
    int? to;
    int? total;

    SubCatagoriesMeta({this.currentPage, this.from, this.lastPage, this.links, this.path, this.perPage, this.to, this.total});
  factory SubCatagoriesMeta.fromJson(Map<String, dynamic> json) => _$SubCatagoriesMetaFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SubCatagoriesMetaToJson(this);

}
@JsonSerializable()
class SubCatagoriesLinks1 {
    dynamic url;
    String? label;
    bool? active;

    SubCatagoriesLinks1({this.url, this.label, this.active});
  factory SubCatagoriesLinks1.fromJson(Map<String, dynamic> json) => _$SubCatagoriesLinks1FromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SubCatagoriesLinks1ToJson(this);

  
}
@JsonSerializable()
class SubCatagoriesLinks {
    dynamic first;
    String? last;
    dynamic prev;
    String? next;

    SubCatagoriesLinks({this.first, this.last, this.prev, this.next});
  factory SubCatagoriesLinks.fromJson(Map<String, dynamic> json) => _$SubCatagoriesLinksFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SubCatagoriesLinksToJson(this);

}
@JsonSerializable()
class SubCatagoriesData {
    int? id;
    String? name;
    String? icon;
    int? mainCategoryId;

    SubCatagoriesData({this.id, this.name, this.icon, this.mainCategoryId});
  factory SubCatagoriesData.fromJson(Map<String, dynamic> json) => _$SubCatagoriesDataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SubCatagoriesDataToJson(this);

    
}
