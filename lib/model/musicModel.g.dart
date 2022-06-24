// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musicModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetMusicModelCollection on Isar {
  IsarCollection<MusicModel> get musicModels => getCollection();
}

const MusicModelSchema = CollectionSchema(
  name: 'MusicModel',
  schema:
      '{"name":"MusicModel","idName":"id","properties":[{"name":"hashCode","type":"Long"},{"name":"isPurchased","type":"Bool"},{"name":"name","type":"String"},{"name":"path","type":"String"},{"name":"price","type":"Long"},{"name":"priceType","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'hashCode': 0,
    'isPurchased': 1,
    'name': 2,
    'path': 3,
    'price': 4,
    'priceType': 5
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _musicModelGetId,
  setId: _musicModelSetId,
  getLinks: _musicModelGetLinks,
  attachLinks: _musicModelAttachLinks,
  serializeNative: _musicModelSerializeNative,
  deserializeNative: _musicModelDeserializeNative,
  deserializePropNative: _musicModelDeserializePropNative,
  serializeWeb: _musicModelSerializeWeb,
  deserializeWeb: _musicModelDeserializeWeb,
  deserializePropWeb: _musicModelDeserializePropWeb,
  version: 3,
);

int? _musicModelGetId(MusicModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _musicModelSetId(MusicModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _musicModelGetLinks(MusicModel object) {
  return [];
}

void _musicModelSerializeNative(
    IsarCollection<MusicModel> collection,
    IsarRawObject rawObj,
    MusicModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.hashCode;
  final _hashCode = value0;
  final value1 = object.isPurchased;
  final _isPurchased = value1;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final value3 = object.path;
  final _path = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_path.length) as int;
  final value4 = object.price;
  final _price = value4;
  final value5 = object.priceType;
  IsarUint8List? _priceType;
  if (value5 != null) {
    _priceType = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_priceType?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _hashCode);
  writer.writeBool(offsets[1], _isPurchased);
  writer.writeBytes(offsets[2], _name);
  writer.writeBytes(offsets[3], _path);
  writer.writeLong(offsets[4], _price);
  writer.writeBytes(offsets[5], _priceType);
}

MusicModel _musicModelDeserializeNative(IsarCollection<MusicModel> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = MusicModel(
    id: id,
    isPurchased: reader.readBoolOrNull(offsets[1]),
    name: reader.readString(offsets[2]),
    price: reader.readLongOrNull(offsets[4]),
    priceType: reader.readStringOrNull(offsets[5]),
  );
  object.path = reader.readString(offsets[3]);
  return object;
}

P _musicModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _musicModelSerializeWeb(
    IsarCollection<MusicModel> collection, MusicModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isPurchased', object.isPurchased);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'path', object.path);
  IsarNative.jsObjectSet(jsObj, 'price', object.price);
  IsarNative.jsObjectSet(jsObj, 'priceType', object.priceType);
  return jsObj;
}

MusicModel _musicModelDeserializeWeb(
    IsarCollection<MusicModel> collection, dynamic jsObj) {
  final object = MusicModel(
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    isPurchased: IsarNative.jsObjectGet(jsObj, 'isPurchased'),
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    price: IsarNative.jsObjectGet(jsObj, 'price'),
    priceType: IsarNative.jsObjectGet(jsObj, 'priceType'),
  );
  object.path = IsarNative.jsObjectGet(jsObj, 'path') ?? '';
  return object;
}

P _musicModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isPurchased':
      return (IsarNative.jsObjectGet(jsObj, 'isPurchased')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'path':
      return (IsarNative.jsObjectGet(jsObj, 'path') ?? '') as P;
    case 'price':
      return (IsarNative.jsObjectGet(jsObj, 'price')) as P;
    case 'priceType':
      return (IsarNative.jsObjectGet(jsObj, 'priceType')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _musicModelAttachLinks(IsarCollection col, int id, MusicModel object) {}

extension MusicModelQueryWhereSort
    on QueryBuilder<MusicModel, MusicModel, QWhere> {
  QueryBuilder<MusicModel, MusicModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension MusicModelQueryWhere
    on QueryBuilder<MusicModel, MusicModel, QWhereClause> {
  QueryBuilder<MusicModel, MusicModel, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<MusicModel, MusicModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<MusicModel, MusicModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<MusicModel, MusicModel, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension MusicModelQueryFilter
    on QueryBuilder<MusicModel, MusicModel, QFilterCondition> {
  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition>
      isPurchasedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isPurchased',
      value: null,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition>
      isPurchasedEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isPurchased',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'path',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> pathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'path',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'price',
      value: null,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'price',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition>
      priceTypeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'priceType',
      value: null,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'priceType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition>
      priceTypeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'priceType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceTypeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'priceType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceTypeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priceType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition>
      priceTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'priceType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'priceType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'priceType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MusicModel, MusicModel, QAfterFilterCondition> priceTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'priceType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension MusicModelQueryLinks
    on QueryBuilder<MusicModel, MusicModel, QFilterCondition> {}

extension MusicModelQueryWhereSortBy
    on QueryBuilder<MusicModel, MusicModel, QSortBy> {
  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByIsPurchased() {
    return addSortByInternal('isPurchased', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByIsPurchasedDesc() {
    return addSortByInternal('isPurchased', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByPath() {
    return addSortByInternal('path', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByPathDesc() {
    return addSortByInternal('path', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByPriceType() {
    return addSortByInternal('priceType', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> sortByPriceTypeDesc() {
    return addSortByInternal('priceType', Sort.desc);
  }
}

extension MusicModelQueryWhereSortThenBy
    on QueryBuilder<MusicModel, MusicModel, QSortThenBy> {
  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByIsPurchased() {
    return addSortByInternal('isPurchased', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByIsPurchasedDesc() {
    return addSortByInternal('isPurchased', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByPath() {
    return addSortByInternal('path', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByPathDesc() {
    return addSortByInternal('path', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByPriceType() {
    return addSortByInternal('priceType', Sort.asc);
  }

  QueryBuilder<MusicModel, MusicModel, QAfterSortBy> thenByPriceTypeDesc() {
    return addSortByInternal('priceType', Sort.desc);
  }
}

extension MusicModelQueryWhereDistinct
    on QueryBuilder<MusicModel, MusicModel, QDistinct> {
  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctByIsPurchased() {
    return addDistinctByInternal('isPurchased');
  }

  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctByPath(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('path', caseSensitive: caseSensitive);
  }

  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctByPrice() {
    return addDistinctByInternal('price');
  }

  QueryBuilder<MusicModel, MusicModel, QDistinct> distinctByPriceType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('priceType', caseSensitive: caseSensitive);
  }
}

extension MusicModelQueryProperty
    on QueryBuilder<MusicModel, MusicModel, QQueryProperty> {
  QueryBuilder<MusicModel, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<MusicModel, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<MusicModel, bool?, QQueryOperations> isPurchasedProperty() {
    return addPropertyNameInternal('isPurchased');
  }

  QueryBuilder<MusicModel, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<MusicModel, String, QQueryOperations> pathProperty() {
    return addPropertyNameInternal('path');
  }

  QueryBuilder<MusicModel, int?, QQueryOperations> priceProperty() {
    return addPropertyNameInternal('price');
  }

  QueryBuilder<MusicModel, String?, QQueryOperations> priceTypeProperty() {
    return addPropertyNameInternal('priceType');
  }
}
