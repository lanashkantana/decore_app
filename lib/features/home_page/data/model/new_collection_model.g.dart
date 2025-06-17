// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewCollectionModel _$NewCollectionModelFromJson(
  Map<String, dynamic> json,
) => NewCollectionModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => NewCollectionData.fromJson(e as Map<String, dynamic>))
          .toList(),
  links:
      json['links'] == null
          ? null
          : NewCollectionLinks.fromJson(json['links'] as Map<String, dynamic>),
  meta:
      json['meta'] == null
          ? null
          : NewCollectionMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NewCollectionModelToJson(NewCollectionModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

NewCollectionMeta _$NewCollectionMetaFromJson(Map<String, dynamic> json) =>
    NewCollectionMeta(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      links:
          (json['links'] as List<dynamic>?)
              ?.map(
                (e) => NewCollectionLinks1.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NewCollectionMetaToJson(NewCollectionMeta instance) =>
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

NewCollectionLinks1 _$NewCollectionLinks1FromJson(Map<String, dynamic> json) =>
    NewCollectionLinks1(
      url: json['url'],
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$NewCollectionLinks1ToJson(
  NewCollectionLinks1 instance,
) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};

NewCollectionLinks _$NewCollectionLinksFromJson(Map<String, dynamic> json) =>
    NewCollectionLinks(
      first: json['first'],
      last: json['last'],
      prev: json['prev'],
      next: json['next'],
    );

Map<String, dynamic> _$NewCollectionLinksToJson(NewCollectionLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

NewCollectionData _$NewCollectionDataFromJson(Map<String, dynamic> json) =>
    NewCollectionData(
      id: (json['id'] as num?)?.toInt(),
      subCategoryId: json['subCategoryId'] as String?,
      color: json['color'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      isSale: json['isSale'] as bool?,
      salePrice: (json['salePrice'] as num?)?.toInt(),
      image: json['image'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NewCollectionDataToJson(NewCollectionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subCategoryId': instance.subCategoryId,
      'color': instance.color,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'isSale': instance.isSale,
      'salePrice': instance.salePrice,
      'image': instance.image,
      'rate': instance.rate,
    };
