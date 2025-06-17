
import 'package:json_annotation/json_annotation.dart';

part 'new_collection_model.g.dart';
@JsonSerializable()
class NewCollectionModel {
    List<NewCollectionData>? data;
    NewCollectionLinks? links;
    NewCollectionMeta? meta;

    NewCollectionModel({this.data, this.links, this.meta});
     factory NewCollectionModel.fromJson(Map<String, dynamic> json) => _$NewCollectionModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewCollectionModelToJson(this);

}
@JsonSerializable()
class NewCollectionMeta {
    int? currentPage;
    int? from;
    int? lastPage;
    List<NewCollectionLinks1>? links;
    String? path;
    int? perPage;
    int? to;
    int? total;

    NewCollectionMeta({this.currentPage, this.from, this.lastPage, this.links, this.path, this.perPage, this.to, this.total});
      factory NewCollectionMeta.fromJson(Map<String, dynamic> json) => _$NewCollectionMetaFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewCollectionMetaToJson(this);


}
@JsonSerializable()
class NewCollectionLinks1 {
    dynamic url;
    String? label;
    bool? active;

    NewCollectionLinks1({this.url, this.label, this.active});
      factory NewCollectionLinks1.fromJson(Map<String, dynamic> json) => _$NewCollectionLinks1FromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewCollectionLinks1ToJson(this);


  
}
@JsonSerializable()
class NewCollectionLinks {
    dynamic first;
    dynamic last;
    dynamic prev;
    dynamic next;

    NewCollectionLinks({this.first, this.last, this.prev, this.next});
      factory NewCollectionLinks.fromJson(Map<String, dynamic> json) => _$NewCollectionLinksFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewCollectionLinksToJson(this);


}
@JsonSerializable()
class NewCollectionData {
    int? id;
    String? subCategoryId;
    String? color;
    String? name;
    String? description;
    int? price;
    bool? isSale;
    int? salePrice;
    String? image;
    int? rate;

    NewCollectionData({this.id, this.subCategoryId, this.color, this.name, this.description, this.price, this.isSale, this.salePrice, this.image, this.rate});
      factory NewCollectionData.fromJson(Map<String, dynamic> json) => _$NewCollectionDataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewCollectionDataToJson(this);


}
