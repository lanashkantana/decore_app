


import 'package:json_annotation/json_annotation.dart';

part 'slider_model.g.dart';
@JsonSerializable()
class Slider {
    List<Data>? data;
    Links? links;
    Meta? meta;

    Slider({this.data, this.links, this.meta});
factory Slider.fromJson(Map<String, dynamic> json) => _$SliderFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SliderToJson(this);
  
}
@JsonSerializable()
class Meta {
    int? currentPage;
    int? from;
    int? lastPage;
    List<Links1>? links;
    String? path;
    int? perPage;
    int? to;
    int? total;

    Meta({this.currentPage, this.from, this.lastPage, this.links, this.path, this.perPage, this.to, this.total});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
@JsonSerializable()
class Links1 {
    dynamic url;
    String? label;
    bool? active;

    Links1({this.url, this.label, this.active});

 factory Links1.fromJson(Map<String, dynamic> json) => _$Links1FromJson(json);

  
  Map<String, dynamic> toJson() => _$Links1ToJson(this);
}
@JsonSerializable()
class Links {
    dynamic first;
    dynamic last;
    dynamic prev;
    dynamic next;

    Links({this.first, this.last, this.prev, this.next});

   factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
@JsonSerializable()
class Data {
    int? id;
    String? image;

    Data({this.id, this.image});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
