// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_catagories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCatagoriesModel _$GetCatagoriesModelFromJson(
  Map<String, dynamic> json,
) => GetCatagoriesModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => GetCatagoriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
  links:
      json['links'] == null
          ? null
          : GetCatagoriesLinks.fromJson(json['links'] as Map<String, dynamic>),
  meta:
      json['meta'] == null
          ? null
          : GetCatagoriesMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetCatagoriesModelToJson(GetCatagoriesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

GetCatagoriesMeta _$GetCatagoriesMetaFromJson(Map<String, dynamic> json) =>
    GetCatagoriesMeta(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      links:
          (json['links'] as List<dynamic>?)
              ?.map(
                (e) => GetCatagoriesLinks1.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCatagoriesMetaToJson(GetCatagoriesMeta instance) =>
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

GetCatagoriesLinks1 _$GetCatagoriesLinks1FromJson(Map<String, dynamic> json) =>
    GetCatagoriesLinks1(
      url: json['url'],
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$GetCatagoriesLinks1ToJson(
  GetCatagoriesLinks1 instance,
) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};

GetCatagoriesLinks _$GetCatagoriesLinksFromJson(Map<String, dynamic> json) =>
    GetCatagoriesLinks(
      first: json['first'],
      last: json['last'],
      prev: json['prev'],
      next: json['next'],
    );

Map<String, dynamic> _$GetCatagoriesLinksToJson(GetCatagoriesLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

GetCatagoriesData _$GetCatagoriesDataFromJson(Map<String, dynamic> json) =>
    GetCatagoriesData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$GetCatagoriesDataToJson(GetCatagoriesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
