// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomoticaUserModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetPomoticaUserModelCollection on Isar {
  IsarCollection<PomoticaUserModel> get pomoticaUserModels {
    return getCollection('PomoticaUserModel');
  }
}

final PomoticaUserModelSchema = CollectionSchema(
  name: 'PomoticaUserModel',
  schema:
      '{"name":"PomoticaUserModel","idName":"id","properties":[{"name":"bigBreakTime","type":"Long"},{"name":"breakTime","type":"Long"},{"name":"defaultWorkingTime","type":"Long"},{"name":"numberOfSessions","type":"Long"}],"indexes":[],"links":[]}',
  nativeAdapter: const _PomoticaUserModelNativeAdapter(),
  webAdapter: const _PomoticaUserModelWebAdapter(),
  idName: 'id',
  propertyIds: {
    'bigBreakTime': 0,
    'breakTime': 1,
    'defaultWorkingTime': 2,
    'numberOfSessions': 3
  },
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _PomoticaUserModelWebAdapter
    extends IsarWebTypeAdapter<PomoticaUserModel> {
  const _PomoticaUserModelWebAdapter();

  @override
  Object serialize(
      IsarCollection<PomoticaUserModel> collection, PomoticaUserModel object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'bigBreakTime', object.bigBreakTime);
    IsarNative.jsObjectSet(jsObj, 'breakTime', object.breakTime);
    IsarNative.jsObjectSet(
        jsObj, 'defaultWorkingTime', object.defaultWorkingTime);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'numberOfSessions', object.numberOfSessions);
    return jsObj;
  }

  @override
  PomoticaUserModel deserialize(
      IsarCollection<PomoticaUserModel> collection, dynamic jsObj) {
    final object = PomoticaUserModel(
      bigBreakTime: IsarNative.jsObjectGet(jsObj, 'bigBreakTime') ??
          double.negativeInfinity,
      breakTime:
          IsarNative.jsObjectGet(jsObj, 'breakTime') ?? double.negativeInfinity,
      defaultWorkingTime: IsarNative.jsObjectGet(jsObj, 'defaultWorkingTime') ??
          double.negativeInfinity,
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      numberOfSessions: IsarNative.jsObjectGet(jsObj, 'numberOfSessions') ??
          double.negativeInfinity,
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'bigBreakTime':
        return (IsarNative.jsObjectGet(jsObj, 'bigBreakTime') ??
            double.negativeInfinity) as P;
      case 'breakTime':
        return (IsarNative.jsObjectGet(jsObj, 'breakTime') ??
            double.negativeInfinity) as P;
      case 'defaultWorkingTime':
        return (IsarNative.jsObjectGet(jsObj, 'defaultWorkingTime') ??
            double.negativeInfinity) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'numberOfSessions':
        return (IsarNative.jsObjectGet(jsObj, 'numberOfSessions') ??
            double.negativeInfinity) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, PomoticaUserModel object) {}
}

class _PomoticaUserModelNativeAdapter
    extends IsarNativeTypeAdapter<PomoticaUserModel> {
  const _PomoticaUserModelNativeAdapter();

  @override
  void serialize(
      IsarCollection<PomoticaUserModel> collection,
      IsarRawObject rawObj,
      PomoticaUserModel object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.bigBreakTime;
    final _bigBreakTime = value0;
    final value1 = object.breakTime;
    final _breakTime = value1;
    final value2 = object.defaultWorkingTime;
    final _defaultWorkingTime = value2;
    final value3 = object.numberOfSessions;
    final _numberOfSessions = value3;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeLong(offsets[0], _bigBreakTime);
    writer.writeLong(offsets[1], _breakTime);
    writer.writeLong(offsets[2], _defaultWorkingTime);
    writer.writeLong(offsets[3], _numberOfSessions);
  }

  @override
  PomoticaUserModel deserialize(IsarCollection<PomoticaUserModel> collection,
      int id, IsarBinaryReader reader, List<int> offsets) {
    final object = PomoticaUserModel(
      bigBreakTime: reader.readLong(offsets[0]),
      breakTime: reader.readLong(offsets[1]),
      defaultWorkingTime: reader.readLong(offsets[2]),
      id: id,
      numberOfSessions: reader.readLong(offsets[3]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readLong(offset)) as P;
      case 1:
        return (reader.readLong(offset)) as P;
      case 2:
        return (reader.readLong(offset)) as P;
      case 3:
        return (reader.readLong(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, PomoticaUserModel object) {}
}

extension PomoticaUserModelQueryWhereSort
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QWhere> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension PomoticaUserModelQueryWhere
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QWhereClause> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension PomoticaUserModelQueryFilter
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QFilterCondition> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'bigBreakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'bigBreakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'bigBreakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'bigBreakTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'breakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'breakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'breakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'breakTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultWorkingTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultWorkingTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultWorkingTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultWorkingTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'numberOfSessions',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'numberOfSessions',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'numberOfSessions',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'numberOfSessions',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension PomoticaUserModelQueryLinks
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QFilterCondition> {}

extension PomoticaUserModelQueryWhereSortBy
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QSortBy> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBigBreakTime() {
    return addSortByInternal('bigBreakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBigBreakTimeDesc() {
    return addSortByInternal('bigBreakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBreakTime() {
    return addSortByInternal('breakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBreakTimeDesc() {
    return addSortByInternal('breakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByDefaultWorkingTime() {
    return addSortByInternal('defaultWorkingTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByDefaultWorkingTimeDesc() {
    return addSortByInternal('defaultWorkingTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByNumberOfSessions() {
    return addSortByInternal('numberOfSessions', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByNumberOfSessionsDesc() {
    return addSortByInternal('numberOfSessions', Sort.desc);
  }
}

extension PomoticaUserModelQueryWhereSortThenBy
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QSortThenBy> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBigBreakTime() {
    return addSortByInternal('bigBreakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBigBreakTimeDesc() {
    return addSortByInternal('bigBreakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBreakTime() {
    return addSortByInternal('breakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBreakTimeDesc() {
    return addSortByInternal('breakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByDefaultWorkingTime() {
    return addSortByInternal('defaultWorkingTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByDefaultWorkingTimeDesc() {
    return addSortByInternal('defaultWorkingTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByNumberOfSessions() {
    return addSortByInternal('numberOfSessions', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByNumberOfSessionsDesc() {
    return addSortByInternal('numberOfSessions', Sort.desc);
  }
}

extension PomoticaUserModelQueryWhereDistinct
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByBigBreakTime() {
    return addDistinctByInternal('bigBreakTime');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByBreakTime() {
    return addDistinctByInternal('breakTime');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByDefaultWorkingTime() {
    return addDistinctByInternal('defaultWorkingTime');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByNumberOfSessions() {
    return addDistinctByInternal('numberOfSessions');
  }
}

extension PomoticaUserModelQueryProperty
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QQueryProperty> {
  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      bigBreakTimeProperty() {
    return addPropertyNameInternal('bigBreakTime');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> breakTimeProperty() {
    return addPropertyNameInternal('breakTime');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      defaultWorkingTimeProperty() {
    return addPropertyNameInternal('defaultWorkingTime');
  }

  QueryBuilder<PomoticaUserModel, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      numberOfSessionsProperty() {
    return addPropertyNameInternal('numberOfSessions');
  }
}
