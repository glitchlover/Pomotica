// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomoticaUserModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPomoticaUserModelCollection on Isar {
  IsarCollection<PomoticaUserModel> get pomoticaUserModels => getCollection();
}

const PomoticaUserModelSchema = CollectionSchema(
  name: 'PomoticaUserModel',
  schema:
      '{"name":"PomoticaUserModel","idName":"id","properties":[{"name":"bigBreakTime","type":"Long"},{"name":"breakTime","type":"Long"},{"name":"currentSession","type":"Long"},{"name":"currentStatus","type":"Long"},{"name":"defaultWorkingTime","type":"Long"},{"name":"numberOfSessions","type":"Long"},{"name":"pomoCoins","type":"Long"},{"name":"pomoGems","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'bigBreakTime': 0,
    'breakTime': 1,
    'currentSession': 2,
    'currentStatus': 3,
    'defaultWorkingTime': 4,
    'numberOfSessions': 5,
    'pomoCoins': 6,
    'pomoGems': 7
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _pomoticaUserModelGetId,
  setId: _pomoticaUserModelSetId,
  getLinks: _pomoticaUserModelGetLinks,
  attachLinks: _pomoticaUserModelAttachLinks,
  serializeNative: _pomoticaUserModelSerializeNative,
  deserializeNative: _pomoticaUserModelDeserializeNative,
  deserializePropNative: _pomoticaUserModelDeserializePropNative,
  serializeWeb: _pomoticaUserModelSerializeWeb,
  deserializeWeb: _pomoticaUserModelDeserializeWeb,
  deserializePropWeb: _pomoticaUserModelDeserializePropWeb,
  version: 3,
);

int? _pomoticaUserModelGetId(PomoticaUserModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _pomoticaUserModelSetId(PomoticaUserModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _pomoticaUserModelGetLinks(PomoticaUserModel object) {
  return [];
}

const _pomoticaUserModelPomodoroStatusConverter = PomodoroStatusConverter();

void _pomoticaUserModelSerializeNative(
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
  final value2 = object.currentSession;
  final _currentSession = value2;
  final value3 =
      _pomoticaUserModelPomodoroStatusConverter.toIsar(object.currentStatus);
  final _currentStatus = value3;
  final value4 = object.defaultWorkingTime;
  final _defaultWorkingTime = value4;
  final value5 = object.numberOfSessions;
  final _numberOfSessions = value5;
  final value6 = object.pomoCoins;
  final _pomoCoins = value6;
  final value7 = object.pomoGems;
  final _pomoGems = value7;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _bigBreakTime);
  writer.writeLong(offsets[1], _breakTime);
  writer.writeLong(offsets[2], _currentSession);
  writer.writeLong(offsets[3], _currentStatus);
  writer.writeLong(offsets[4], _defaultWorkingTime);
  writer.writeLong(offsets[5], _numberOfSessions);
  writer.writeLong(offsets[6], _pomoCoins);
  writer.writeLong(offsets[7], _pomoGems);
}

PomoticaUserModel _pomoticaUserModelDeserializeNative(
    IsarCollection<PomoticaUserModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = PomoticaUserModel(
    bigBreakTime: reader.readLong(offsets[0]),
    breakTime: reader.readLong(offsets[1]),
    currentSession: reader.readLong(offsets[2]),
    currentStatus: _pomoticaUserModelPomodoroStatusConverter
        .fromIsar(reader.readLong(offsets[3])),
    defaultWorkingTime: reader.readLong(offsets[4]),
    id: id,
    numberOfSessions: reader.readLong(offsets[5]),
    pomoCoins: reader.readLong(offsets[6]),
    pomoGems: reader.readLong(offsets[7]),
  );
  return object;
}

P _pomoticaUserModelDeserializePropNative<P>(
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
      return (_pomoticaUserModelPomodoroStatusConverter
          .fromIsar(reader.readLong(offset))) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _pomoticaUserModelSerializeWeb(
    IsarCollection<PomoticaUserModel> collection, PomoticaUserModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'bigBreakTime', object.bigBreakTime);
  IsarNative.jsObjectSet(jsObj, 'breakTime', object.breakTime);
  IsarNative.jsObjectSet(jsObj, 'currentSession', object.currentSession);
  IsarNative.jsObjectSet(jsObj, 'currentStatus',
      _pomoticaUserModelPomodoroStatusConverter.toIsar(object.currentStatus));
  IsarNative.jsObjectSet(
      jsObj, 'defaultWorkingTime', object.defaultWorkingTime);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'numberOfSessions', object.numberOfSessions);
  IsarNative.jsObjectSet(jsObj, 'pomoCoins', object.pomoCoins);
  IsarNative.jsObjectSet(jsObj, 'pomoGems', object.pomoGems);
  return jsObj;
}

PomoticaUserModel _pomoticaUserModelDeserializeWeb(
    IsarCollection<PomoticaUserModel> collection, dynamic jsObj) {
  final object = PomoticaUserModel(
    bigBreakTime: IsarNative.jsObjectGet(jsObj, 'bigBreakTime') ??
        double.negativeInfinity,
    breakTime:
        IsarNative.jsObjectGet(jsObj, 'breakTime') ?? double.negativeInfinity,
    currentSession: IsarNative.jsObjectGet(jsObj, 'currentSession') ??
        double.negativeInfinity,
    currentStatus: _pomoticaUserModelPomodoroStatusConverter.fromIsar(
        IsarNative.jsObjectGet(jsObj, 'currentStatus') ??
            double.negativeInfinity),
    defaultWorkingTime: IsarNative.jsObjectGet(jsObj, 'defaultWorkingTime') ??
        double.negativeInfinity,
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    numberOfSessions: IsarNative.jsObjectGet(jsObj, 'numberOfSessions') ??
        double.negativeInfinity,
    pomoCoins:
        IsarNative.jsObjectGet(jsObj, 'pomoCoins') ?? double.negativeInfinity,
    pomoGems:
        IsarNative.jsObjectGet(jsObj, 'pomoGems') ?? double.negativeInfinity,
  );
  return object;
}

P _pomoticaUserModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'bigBreakTime':
      return (IsarNative.jsObjectGet(jsObj, 'bigBreakTime') ??
          double.negativeInfinity) as P;
    case 'breakTime':
      return (IsarNative.jsObjectGet(jsObj, 'breakTime') ??
          double.negativeInfinity) as P;
    case 'currentSession':
      return (IsarNative.jsObjectGet(jsObj, 'currentSession') ??
          double.negativeInfinity) as P;
    case 'currentStatus':
      return (_pomoticaUserModelPomodoroStatusConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'currentStatus') ??
              double.negativeInfinity)) as P;
    case 'defaultWorkingTime':
      return (IsarNative.jsObjectGet(jsObj, 'defaultWorkingTime') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'numberOfSessions':
      return (IsarNative.jsObjectGet(jsObj, 'numberOfSessions') ??
          double.negativeInfinity) as P;
    case 'pomoCoins':
      return (IsarNative.jsObjectGet(jsObj, 'pomoCoins') ??
          double.negativeInfinity) as P;
    case 'pomoGems':
      return (IsarNative.jsObjectGet(jsObj, 'pomoGems') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _pomoticaUserModelAttachLinks(
    IsarCollection col, int id, PomoticaUserModel object) {}

extension PomoticaUserModelQueryWhereSort
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QWhere> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PomoticaUserModelQueryWhere
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QWhereClause> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idNotEqualTo(int id) {
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idBetween(
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
      currentSessionEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentSession',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentSession',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentSession',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentSession',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusEqualTo(PomodoroStatus value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentStatus',
      value: _pomoticaUserModelPomodoroStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusGreaterThan(
    PomodoroStatus value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentStatus',
      value: _pomoticaUserModelPomodoroStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusLessThan(
    PomodoroStatus value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentStatus',
      value: _pomoticaUserModelPomodoroStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusBetween(
    PomodoroStatus lower,
    PomodoroStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentStatus',
      lower: _pomoticaUserModelPomodoroStatusConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _pomoticaUserModelPomodoroStatusConverter.toIsar(upper),
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
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomoCoins',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomoCoins',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomoCoins',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomoCoins',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomoGems',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomoGems',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomoGems',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomoGems',
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
      sortByCurrentSession() {
    return addSortByInternal('currentSession', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentSessionDesc() {
    return addSortByInternal('currentSession', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentStatus() {
    return addSortByInternal('currentStatus', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentStatusDesc() {
    return addSortByInternal('currentStatus', Sort.desc);
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoCoins() {
    return addSortByInternal('pomoCoins', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoCoinsDesc() {
    return addSortByInternal('pomoCoins', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoGems() {
    return addSortByInternal('pomoGems', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoGemsDesc() {
    return addSortByInternal('pomoGems', Sort.desc);
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
      thenByCurrentSession() {
    return addSortByInternal('currentSession', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentSessionDesc() {
    return addSortByInternal('currentSession', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentStatus() {
    return addSortByInternal('currentStatus', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentStatusDesc() {
    return addSortByInternal('currentStatus', Sort.desc);
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoCoins() {
    return addSortByInternal('pomoCoins', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoCoinsDesc() {
    return addSortByInternal('pomoCoins', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoGems() {
    return addSortByInternal('pomoGems', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoGemsDesc() {
    return addSortByInternal('pomoGems', Sort.desc);
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
      distinctByCurrentSession() {
    return addDistinctByInternal('currentSession');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByCurrentStatus() {
    return addDistinctByInternal('currentStatus');
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

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByPomoCoins() {
    return addDistinctByInternal('pomoCoins');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByPomoGems() {
    return addDistinctByInternal('pomoGems');
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
      currentSessionProperty() {
    return addPropertyNameInternal('currentSession');
  }

  QueryBuilder<PomoticaUserModel, PomodoroStatus, QQueryOperations>
      currentStatusProperty() {
    return addPropertyNameInternal('currentStatus');
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

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> pomoCoinsProperty() {
    return addPropertyNameInternal('pomoCoins');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> pomoGemsProperty() {
    return addPropertyNameInternal('pomoGems');
  }
}
