// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Slider _$SliderFromJson(Map<String, dynamic> json) => Slider(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
  links:
      json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
  meta:
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SliderToJson(Slider instance) => <String, dynamic>{
  'data': instance.data,
  'links': instance.links,
  'meta': instance.meta,
};

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
  currentPage: (json['currentPage'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  lastPage: (json['lastPage'] as num?)?.toInt(),
  links:
      (json['links'] as List<dynamic>?)
          ?.map((e) => Links1.fromJson(e as Map<String, dynamic>))
          .toList(),
  path: json['path'] as String?,
  perPage: (json['perPage'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'from': instance.from,
  'lastPage': instance.lastPage,
  'links': instance.links,
  'path': instance.path,
  'perPage': instance.perPage,
  'to': instance.to,
  'total': instance.total,
};

Links1 _$Links1FromJson(Map<String, dynamic> json) => Links1(
  url: json['url'],
  label: json['label'] as String?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$Links1ToJson(Links1 instance) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
  first: json['first'],
  last: json['last'],
  prev: json['prev'],
  next: json['next'],
);

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
  'first': instance.first,
  'last': instance.last,
  'prev': instance.prev,
  'next': instance.next,
};

Data _$DataFromJson(Map<String, dynamic> json) =>
    Data(id: (json['id'] as num?)?.toInt(), image: json['image'] as String?);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'id': instance.id,
  'image': instance.image,
};
