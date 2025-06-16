


import 'package:json_annotation/json_annotation.dart';

part 'get_catagories_model.g.dart';
@JsonSerializable()
class GetCatagoriesModel {
    List<GetCatagoriesData>? data;
    GetCatagoriesLinks? links;
    GetCatagoriesMeta? meta;

    GetCatagoriesModel({this.data, this.links, this.meta});
   factory GetCatagoriesModel.fromJson(Map<String, dynamic> json) => _$GetCatagoriesModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GetCatagoriesModelToJson(this);

   

}
@JsonSerializable()
class GetCatagoriesMeta {
    int? currentPage;
    int? from;
    int? lastPage;
    List<GetCatagoriesLinks1>? links;
    String? path;
    int? perPage;
    int? to;
    int? total;

    GetCatagoriesMeta({this.currentPage, this.from, this.lastPage, this.links, this.path, this.perPage, this.to, this.total});
   factory GetCatagoriesMeta.fromJson(Map<String, dynamic> json) => _$GetCatagoriesMetaFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GetCatagoriesMetaToJson(this);

   
        
    }

@JsonSerializable()
class GetCatagoriesLinks1 {
    dynamic url;
    String? label;
    bool? active;

    GetCatagoriesLinks1({this.url, this.label, this.active});
    factory GetCatagoriesLinks1.fromJson(Map<String, dynamic> json) => _$GetCatagoriesLinks1FromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GetCatagoriesLinks1ToJson(this);

   
}
@JsonSerializable()
class GetCatagoriesLinks {
    dynamic first;
    dynamic last;
    dynamic prev;
    dynamic next;

    GetCatagoriesLinks({this.first, this.last, this.prev, this.next});

       factory GetCatagoriesLinks.fromJson(Map<String, dynamic> json) => _$GetCatagoriesLinksFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GetCatagoriesLinksToJson(this);

}
@JsonSerializable()
class GetCatagoriesData {
    int? id;
    String? name;
    String? icon;

    GetCatagoriesData({this.id, this.name, this.icon});
   factory GetCatagoriesData.fromJson(Map<String, dynamic> json) => _$GetCatagoriesDataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GetCatagoriesDataToJson(this);

}
