// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_catagories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCatagoriesModel _$SubCatagoriesModelFromJson(
  Map<String, dynamic> json,
) => SubCatagoriesModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => SubCatagoriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
  links:
      json['links'] == null
          ? null
          : SubCatagoriesLinks.fromJson(json['links'] as Map<String, dynamic>),
  meta:
      json['meta'] == null
          ? null
          : SubCatagoriesMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubCatagoriesModelToJson(SubCatagoriesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

SubCatagoriesMeta _$SubCatagoriesMetaFromJson(Map<String, dynamic> json) =>
    SubCatagoriesMeta(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      links:
          (json['links'] as List<dynamic>?)
              ?.map(
                (e) => SubCatagoriesLinks1.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SubCatagoriesMetaToJson(SubCatagoriesMeta instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'perPage': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

SubCatagoriesLinks1 _$SubCatagoriesLinks1FromJson(Map<String, dynamic> json) =>
    SubCatagoriesLinks1(
      url: json['url'],
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$SubCatagoriesLinks1ToJson(
  SubCatagoriesLinks1 instance,
) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};

SubCatagoriesLinks _$SubCatagoriesLinksFromJson(Map<String, dynamic> json) =>
    SubCatagoriesLinks(
      first: json['first'],
      last: json['last'] as String?,
      prev: json['prev'],
      next: json['next'] as String?,
    );

Map<String, dynamic> _$SubCatagoriesLinksToJson(SubCatagoriesLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

SubCatagoriesData _$SubCatagoriesDataFromJson(Map<String, dynamic> json) =>
    SubCatagoriesData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      mainCategoryId: (json['mainCategoryId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SubCatagoriesDataToJson(SubCatagoriesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'mainCategoryId': instance.mainCategoryId,
    };
