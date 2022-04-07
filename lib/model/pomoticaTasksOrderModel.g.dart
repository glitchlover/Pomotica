// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomoticaTasksOrderModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetPomoticaTasksOrderCollection on Isar {
  IsarCollection<PomoticaTasksOrder> get pomoticaTasksOrders {
    return getCollection('PomoticaTasksOrder');
  }
}

final PomoticaTasksOrderSchema = CollectionSchema(
  name: 'PomoticaTasksOrder',
  schema:
      '{"name":"PomoticaTasksOrder","idName":"pomoticataskid","properties":[{"name":"alias","type":"String"},{"name":"attribute","type":"String"},{"name":"collapseChecklist","type":"Bool"},{"name":"completed","type":"Bool"},{"name":"createdAt","type":"Long"},{"name":"date","type":"Long"},{"name":"everyX","type":"Long"},{"name":"frequency","type":"String"},{"name":"hashCode","type":"Long"},{"name":"id","type":"String"},{"name":"isDue","type":"Bool"},{"name":"isSync","type":"Bool"},{"name":"nextDue","type":"StringList"},{"name":"notes","type":"String"},{"name":"priority","type":"Double"},{"name":"startDate","type":"Long"},{"name":"streak","type":"Long"},{"name":"tags","type":"StringList"},{"name":"text","type":"String"},{"name":"type","type":"String"},{"name":"updatedAt","type":"Long"},{"name":"value","type":"Double"},{"name":"yesterDaily","type":"Bool"}],"indexes":[],"links":[]}',
  nativeAdapter: const _PomoticaTasksOrderNativeAdapter(),
  webAdapter: const _PomoticaTasksOrderWebAdapter(),
  idName: 'pomoticataskid',
  propertyIds: {
    'alias': 0,
    'attribute': 1,
    'collapseChecklist': 2,
    'completed': 3,
    'createdAt': 4,
    'date': 5,
    'everyX': 6,
    'frequency': 7,
    'hashCode': 8,
    'id': 9,
    'isDue': 10,
    'isSync': 11,
    'nextDue': 12,
    'notes': 13,
    'priority': 14,
    'startDate': 15,
    'streak': 16,
    'tags': 17,
    'text': 18,
    'type': 19,
    'updatedAt': 20,
    'value': 21,
    'yesterDaily': 22
  },
  listProperties: {'nextDue', 'tags'},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.pomoticataskid == Isar.autoIncrement) {
      return null;
    } else {
      return obj.pomoticataskid;
    }
  },
  setId: (obj, id) => obj.pomoticataskid = id,
  getLinks: (obj) => [],
  version: 2,
);

class _PomoticaTasksOrderWebAdapter
    extends IsarWebTypeAdapter<PomoticaTasksOrder> {
  const _PomoticaTasksOrderWebAdapter();

  @override
  Object serialize(IsarCollection<PomoticaTasksOrder> collection,
      PomoticaTasksOrder object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'alias', object.alias);
    IsarNative.jsObjectSet(jsObj, 'attribute', object.attribute);
    IsarNative.jsObjectSet(
        jsObj, 'collapseChecklist', object.collapseChecklist);
    IsarNative.jsObjectSet(jsObj, 'completed', object.completed);
    IsarNative.jsObjectSet(
        jsObj, 'createdAt', object.createdAt.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(
        jsObj, 'date', object.date?.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'everyX', object.everyX);
    IsarNative.jsObjectSet(jsObj, 'frequency', object.frequency);
    IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'isDue', object.isDue);
    IsarNative.jsObjectSet(jsObj, 'isSync', object.isSync);
    IsarNative.jsObjectSet(jsObj, 'nextDue', object.nextDue);
    IsarNative.jsObjectSet(jsObj, 'notes', object.notes);
    IsarNative.jsObjectSet(jsObj, 'pomoticataskid', object.pomoticataskid);
    IsarNative.jsObjectSet(jsObj, 'priority', object.priority);
    IsarNative.jsObjectSet(
        jsObj, 'startDate', object.startDate?.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'streak', object.streak);
    IsarNative.jsObjectSet(jsObj, 'tags', object.tags);
    IsarNative.jsObjectSet(jsObj, 'text', object.text);
    IsarNative.jsObjectSet(jsObj, 'type', object.type);
    IsarNative.jsObjectSet(
        jsObj, 'updatedAt', object.updatedAt.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'value', object.value);
    IsarNative.jsObjectSet(jsObj, 'yesterDaily', object.yesterDaily);
    return jsObj;
  }

  @override
  PomoticaTasksOrder deserialize(
      IsarCollection<PomoticaTasksOrder> collection, dynamic jsObj) {
    final object = PomoticaTasksOrder(
      alias: IsarNative.jsObjectGet(jsObj, 'alias'),
      attribute: IsarNative.jsObjectGet(jsObj, 'attribute') ?? '',
      collapseChecklist: IsarNative.jsObjectGet(jsObj, 'collapseChecklist'),
      completed: IsarNative.jsObjectGet(jsObj, 'completed'),
      createdAt: IsarNative.jsObjectGet(jsObj, 'createdAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createdAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      date: IsarNative.jsObjectGet(jsObj, 'date') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'date'),
                  isUtc: true)
              .toLocal()
          : null,
      everyX: IsarNative.jsObjectGet(jsObj, 'everyX'),
      frequency: IsarNative.jsObjectGet(jsObj, 'frequency'),
      id: IsarNative.jsObjectGet(jsObj, 'id') ?? '',
      isDue: IsarNative.jsObjectGet(jsObj, 'isDue'),
      isSync: IsarNative.jsObjectGet(jsObj, 'isSync') ?? false,
      nextDue: (IsarNative.jsObjectGet(jsObj, 'nextDue') as List?)
          ?.map((e) => e ?? '')
          .toList()
          .cast<String>(),
      notes: IsarNative.jsObjectGet(jsObj, 'notes') ?? '',
      pomoticataskid: IsarNative.jsObjectGet(jsObj, 'pomoticataskid'),
      priority:
          IsarNative.jsObjectGet(jsObj, 'priority') ?? double.negativeInfinity,
      startDate: IsarNative.jsObjectGet(jsObj, 'startDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'startDate'),
                  isUtc: true)
              .toLocal()
          : null,
      streak: IsarNative.jsObjectGet(jsObj, 'streak'),
      tags: (IsarNative.jsObjectGet(jsObj, 'tags') as List?)
              ?.map((e) => e ?? '')
              .toList()
              .cast<String>() ??
          [],
      text: IsarNative.jsObjectGet(jsObj, 'text') ?? '',
      type: IsarNative.jsObjectGet(jsObj, 'type') ?? '',
      updatedAt: IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      value: IsarNative.jsObjectGet(jsObj, 'value') ?? double.negativeInfinity,
      yesterDaily: IsarNative.jsObjectGet(jsObj, 'yesterDaily'),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'alias':
        return (IsarNative.jsObjectGet(jsObj, 'alias')) as P;
      case 'attribute':
        return (IsarNative.jsObjectGet(jsObj, 'attribute') ?? '') as P;
      case 'collapseChecklist':
        return (IsarNative.jsObjectGet(jsObj, 'collapseChecklist')) as P;
      case 'completed':
        return (IsarNative.jsObjectGet(jsObj, 'completed')) as P;
      case 'createdAt':
        return (IsarNative.jsObjectGet(jsObj, 'createdAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'createdAt'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'date':
        return (IsarNative.jsObjectGet(jsObj, 'date') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'date'),
                    isUtc: true)
                .toLocal()
            : null) as P;
      case 'everyX':
        return (IsarNative.jsObjectGet(jsObj, 'everyX')) as P;
      case 'frequency':
        return (IsarNative.jsObjectGet(jsObj, 'frequency')) as P;
      case 'hashCode':
        return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
            double.negativeInfinity) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? '') as P;
      case 'isDue':
        return (IsarNative.jsObjectGet(jsObj, 'isDue')) as P;
      case 'isSync':
        return (IsarNative.jsObjectGet(jsObj, 'isSync') ?? false) as P;
      case 'nextDue':
        return ((IsarNative.jsObjectGet(jsObj, 'nextDue') as List?)
            ?.map((e) => e ?? '')
            .toList()
            .cast<String>()) as P;
      case 'notes':
        return (IsarNative.jsObjectGet(jsObj, 'notes') ?? '') as P;
      case 'pomoticataskid':
        return (IsarNative.jsObjectGet(jsObj, 'pomoticataskid')) as P;
      case 'priority':
        return (IsarNative.jsObjectGet(jsObj, 'priority') ??
            double.negativeInfinity) as P;
      case 'startDate':
        return (IsarNative.jsObjectGet(jsObj, 'startDate') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'startDate'),
                    isUtc: true)
                .toLocal()
            : null) as P;
      case 'streak':
        return (IsarNative.jsObjectGet(jsObj, 'streak')) as P;
      case 'tags':
        return ((IsarNative.jsObjectGet(jsObj, 'tags') as List?)
                ?.map((e) => e ?? '')
                .toList()
                .cast<String>() ??
            []) as P;
      case 'text':
        return (IsarNative.jsObjectGet(jsObj, 'text') ?? '') as P;
      case 'type':
        return (IsarNative.jsObjectGet(jsObj, 'type') ?? '') as P;
      case 'updatedAt':
        return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'value':
        return (IsarNative.jsObjectGet(jsObj, 'value') ??
            double.negativeInfinity) as P;
      case 'yesterDaily':
        return (IsarNative.jsObjectGet(jsObj, 'yesterDaily')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, PomoticaTasksOrder object) {}
}

class _PomoticaTasksOrderNativeAdapter
    extends IsarNativeTypeAdapter<PomoticaTasksOrder> {
  const _PomoticaTasksOrderNativeAdapter();

  @override
  void serialize(
      IsarCollection<PomoticaTasksOrder> collection,
      IsarRawObject rawObj,
      PomoticaTasksOrder object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.alias;
    IsarUint8List? _alias;
    if (value0 != null) {
      _alias = IsarBinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += (_alias?.length ?? 0) as int;
    final value1 = object.attribute;
    final _attribute = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_attribute.length) as int;
    final value2 = object.collapseChecklist;
    final _collapseChecklist = value2;
    final value3 = object.completed;
    final _completed = value3;
    final value4 = object.createdAt;
    final _createdAt = value4;
    final value5 = object.date;
    final _date = value5;
    final value6 = object.everyX;
    final _everyX = value6;
    final value7 = object.frequency;
    IsarUint8List? _frequency;
    if (value7 != null) {
      _frequency = IsarBinaryWriter.utf8Encoder.convert(value7);
    }
    dynamicSize += (_frequency?.length ?? 0) as int;
    final value8 = object.hashCode;
    final _hashCode = value8;
    final value9 = object.id;
    final _id = IsarBinaryWriter.utf8Encoder.convert(value9);
    dynamicSize += (_id.length) as int;
    final value10 = object.isDue;
    final _isDue = value10;
    final value11 = object.isSync;
    final _isSync = value11;
    final value12 = object.nextDue;
    dynamicSize += (value12?.length ?? 0) * 8;
    List<IsarUint8List?>? bytesList12;
    if (value12 != null) {
      bytesList12 = [];
      for (var str in value12) {
        final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
        bytesList12.add(bytes);
        dynamicSize += bytes.length as int;
      }
    }
    final _nextDue = bytesList12;
    final value13 = object.notes;
    final _notes = IsarBinaryWriter.utf8Encoder.convert(value13);
    dynamicSize += (_notes.length) as int;
    final value14 = object.priority;
    final _priority = value14;
    final value15 = object.startDate;
    final _startDate = value15;
    final value16 = object.streak;
    final _streak = value16;
    final value17 = object.tags;
    dynamicSize += (value17.length) * 8;
    final bytesList17 = <IsarUint8List>[];
    for (var str in value17) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      bytesList17.add(bytes);
      dynamicSize += bytes.length as int;
    }
    final _tags = bytesList17;
    final value18 = object.text;
    final _text = IsarBinaryWriter.utf8Encoder.convert(value18);
    dynamicSize += (_text.length) as int;
    final value19 = object.type;
    final _type = IsarBinaryWriter.utf8Encoder.convert(value19);
    dynamicSize += (_type.length) as int;
    final value20 = object.updatedAt;
    final _updatedAt = value20;
    final value21 = object.value;
    final _value = value21;
    final value22 = object.yesterDaily;
    final _yesterDaily = value22;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _alias);
    writer.writeBytes(offsets[1], _attribute);
    writer.writeBool(offsets[2], _collapseChecklist);
    writer.writeBool(offsets[3], _completed);
    writer.writeDateTime(offsets[4], _createdAt);
    writer.writeDateTime(offsets[5], _date);
    writer.writeLong(offsets[6], _everyX);
    writer.writeBytes(offsets[7], _frequency);
    writer.writeLong(offsets[8], _hashCode);
    writer.writeBytes(offsets[9], _id);
    writer.writeBool(offsets[10], _isDue);
    writer.writeBool(offsets[11], _isSync);
    writer.writeStringList(offsets[12], _nextDue);
    writer.writeBytes(offsets[13], _notes);
    writer.writeDouble(offsets[14], _priority);
    writer.writeDateTime(offsets[15], _startDate);
    writer.writeLong(offsets[16], _streak);
    writer.writeStringList(offsets[17], _tags);
    writer.writeBytes(offsets[18], _text);
    writer.writeBytes(offsets[19], _type);
    writer.writeDateTime(offsets[20], _updatedAt);
    writer.writeDouble(offsets[21], _value);
    writer.writeBool(offsets[22], _yesterDaily);
  }

  @override
  PomoticaTasksOrder deserialize(IsarCollection<PomoticaTasksOrder> collection,
      int id, IsarBinaryReader reader, List<int> offsets) {
    final object = PomoticaTasksOrder(
      alias: reader.readStringOrNull(offsets[0]),
      attribute: reader.readString(offsets[1]),
      collapseChecklist: reader.readBoolOrNull(offsets[2]),
      completed: reader.readBoolOrNull(offsets[3]),
      createdAt: reader.readDateTime(offsets[4]),
      date: reader.readDateTimeOrNull(offsets[5]),
      everyX: reader.readLongOrNull(offsets[6]),
      frequency: reader.readStringOrNull(offsets[7]),
      id: reader.readString(offsets[9]),
      isDue: reader.readBoolOrNull(offsets[10]),
      isSync: reader.readBool(offsets[11]),
      nextDue: reader.readStringList(offsets[12]),
      notes: reader.readString(offsets[13]),
      pomoticataskid: id,
      priority: reader.readDouble(offsets[14]),
      startDate: reader.readDateTimeOrNull(offsets[15]),
      streak: reader.readLongOrNull(offsets[16]),
      tags: reader.readStringList(offsets[17]) ?? [],
      text: reader.readString(offsets[18]),
      type: reader.readString(offsets[19]),
      updatedAt: reader.readDateTime(offsets[20]),
      value: reader.readDouble(offsets[21]),
      yesterDaily: reader.readBoolOrNull(offsets[22]),
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
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readBoolOrNull(offset)) as P;
      case 3:
        return (reader.readBoolOrNull(offset)) as P;
      case 4:
        return (reader.readDateTime(offset)) as P;
      case 5:
        return (reader.readDateTimeOrNull(offset)) as P;
      case 6:
        return (reader.readLongOrNull(offset)) as P;
      case 7:
        return (reader.readStringOrNull(offset)) as P;
      case 8:
        return (reader.readLong(offset)) as P;
      case 9:
        return (reader.readString(offset)) as P;
      case 10:
        return (reader.readBoolOrNull(offset)) as P;
      case 11:
        return (reader.readBool(offset)) as P;
      case 12:
        return (reader.readStringList(offset)) as P;
      case 13:
        return (reader.readString(offset)) as P;
      case 14:
        return (reader.readDouble(offset)) as P;
      case 15:
        return (reader.readDateTimeOrNull(offset)) as P;
      case 16:
        return (reader.readLongOrNull(offset)) as P;
      case 17:
        return (reader.readStringList(offset) ?? []) as P;
      case 18:
        return (reader.readString(offset)) as P;
      case 19:
        return (reader.readString(offset)) as P;
      case 20:
        return (reader.readDateTime(offset)) as P;
      case 21:
        return (reader.readDouble(offset)) as P;
      case 22:
        return (reader.readBoolOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, PomoticaTasksOrder object) {}
}

extension PomoticaTasksOrderQueryWhereSort
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QWhere> {
  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterWhere>
      anyPomoticataskid() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension PomoticaTasksOrderQueryWhere
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QWhereClause> {
  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterWhereClause>
      pomoticataskidEqualTo(int? pomoticataskid) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [pomoticataskid],
      includeLower: true,
      upper: [pomoticataskid],
      includeUpper: true,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterWhereClause>
      pomoticataskidNotEqualTo(int? pomoticataskid) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [pomoticataskid],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [pomoticataskid],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [pomoticataskid],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [pomoticataskid],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterWhereClause>
      pomoticataskidGreaterThan(
    int? pomoticataskid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [pomoticataskid],
      includeLower: include,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterWhereClause>
      pomoticataskidLessThan(
    int? pomoticataskid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [pomoticataskid],
      includeUpper: include,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterWhereClause>
      pomoticataskidBetween(
    int? lowerPomoticataskid,
    int? upperPomoticataskid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerPomoticataskid],
      includeLower: includeLower,
      upper: [upperPomoticataskid],
      includeUpper: includeUpper,
    ));
  }
}

extension PomoticaTasksOrderQueryFilter
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QFilterCondition> {
  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'alias',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'alias',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'alias',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'alias',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'alias',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'alias',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'alias',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'alias',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      aliasMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'alias',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'attribute',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'attribute',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'attribute',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'attribute',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'attribute',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'attribute',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'attribute',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      attributeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'attribute',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      collapseChecklistIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'collapseChecklist',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      collapseChecklistEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'collapseChecklist',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      completedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'completed',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      completedEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'completed',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      dateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'date',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      dateEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      dateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      dateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      dateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'date',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      everyXIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'everyX',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      everyXEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'everyX',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      everyXGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'everyX',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      everyXLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'everyX',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      everyXBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'everyX',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'frequency',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'frequency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'frequency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'frequency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'frequency',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'frequency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'frequency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'frequency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      frequencyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'frequency',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
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

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      hashCodeLessThan(
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

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      hashCodeBetween(
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

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      isDueIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isDue',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      isDueEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isDue',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      isSyncEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isSync',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'nextDue',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nextDue',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'nextDue',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'nextDue',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'nextDue',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nextDue',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'nextDue',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'nextDue',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'nextDue',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      nextDueAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'nextDue',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'notes',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'notes',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'notes',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      pomoticataskidIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'pomoticataskid',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      pomoticataskidEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomoticataskid',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      pomoticataskidGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomoticataskid',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      pomoticataskidLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomoticataskid',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      pomoticataskidBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomoticataskid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      priorityGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'priority',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      priorityLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'priority',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      priorityBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'priority',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      startDateIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'startDate',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      startDateEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startDate',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      startDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startDate',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      startDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startDate',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      startDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      streakIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'streak',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      streakEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'streak',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      streakGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'streak',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      streakLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'streak',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      streakBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'streak',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'tags',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'tags',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'tags',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tags',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'tags',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'tags',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'tags',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      tagsAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'tags',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'text',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'text',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'text',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'text',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'text',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'text',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'text',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'text',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'type',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'type',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      valueGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'value',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      valueLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'value',
      value: value,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      valueBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'value',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      yesterDailyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'yesterDaily',
      value: null,
    ));
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterFilterCondition>
      yesterDailyEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'yesterDaily',
      value: value,
    ));
  }
}

extension PomoticaTasksOrderQueryLinks
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QFilterCondition> {}

extension PomoticaTasksOrderQueryWhereSortBy
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QSortBy> {
  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByAlias() {
    return addSortByInternal('alias', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByAliasDesc() {
    return addSortByInternal('alias', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByAttribute() {
    return addSortByInternal('attribute', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByAttributeDesc() {
    return addSortByInternal('attribute', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByCollapseChecklist() {
    return addSortByInternal('collapseChecklist', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByCollapseChecklistDesc() {
    return addSortByInternal('collapseChecklist', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByCompleted() {
    return addSortByInternal('completed', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByCompletedDesc() {
    return addSortByInternal('completed', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByEveryX() {
    return addSortByInternal('everyX', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByEveryXDesc() {
    return addSortByInternal('everyX', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByFrequency() {
    return addSortByInternal('frequency', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByFrequencyDesc() {
    return addSortByInternal('frequency', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByIsDue() {
    return addSortByInternal('isDue', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByIsDueDesc() {
    return addSortByInternal('isDue', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByIsSync() {
    return addSortByInternal('isSync', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByIsSyncDesc() {
    return addSortByInternal('isSync', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByNotes() {
    return addSortByInternal('notes', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByNotesDesc() {
    return addSortByInternal('notes', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByPomoticataskid() {
    return addSortByInternal('pomoticataskid', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByPomoticataskidDesc() {
    return addSortByInternal('pomoticataskid', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByPriority() {
    return addSortByInternal('priority', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByPriorityDesc() {
    return addSortByInternal('priority', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByStartDate() {
    return addSortByInternal('startDate', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByStartDateDesc() {
    return addSortByInternal('startDate', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByStreak() {
    return addSortByInternal('streak', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByStreakDesc() {
    return addSortByInternal('streak', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByText() {
    return addSortByInternal('text', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByTextDesc() {
    return addSortByInternal('text', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByType() {
    return addSortByInternal('type', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByTypeDesc() {
    return addSortByInternal('type', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByYesterDaily() {
    return addSortByInternal('yesterDaily', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      sortByYesterDailyDesc() {
    return addSortByInternal('yesterDaily', Sort.desc);
  }
}

extension PomoticaTasksOrderQueryWhereSortThenBy
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QSortThenBy> {
  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByAlias() {
    return addSortByInternal('alias', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByAliasDesc() {
    return addSortByInternal('alias', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByAttribute() {
    return addSortByInternal('attribute', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByAttributeDesc() {
    return addSortByInternal('attribute', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByCollapseChecklist() {
    return addSortByInternal('collapseChecklist', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByCollapseChecklistDesc() {
    return addSortByInternal('collapseChecklist', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByCompleted() {
    return addSortByInternal('completed', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByCompletedDesc() {
    return addSortByInternal('completed', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByEveryX() {
    return addSortByInternal('everyX', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByEveryXDesc() {
    return addSortByInternal('everyX', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByFrequency() {
    return addSortByInternal('frequency', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByFrequencyDesc() {
    return addSortByInternal('frequency', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByIsDue() {
    return addSortByInternal('isDue', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByIsDueDesc() {
    return addSortByInternal('isDue', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByIsSync() {
    return addSortByInternal('isSync', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByIsSyncDesc() {
    return addSortByInternal('isSync', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByNotes() {
    return addSortByInternal('notes', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByNotesDesc() {
    return addSortByInternal('notes', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByPomoticataskid() {
    return addSortByInternal('pomoticataskid', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByPomoticataskidDesc() {
    return addSortByInternal('pomoticataskid', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByPriority() {
    return addSortByInternal('priority', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByPriorityDesc() {
    return addSortByInternal('priority', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByStartDate() {
    return addSortByInternal('startDate', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByStartDateDesc() {
    return addSortByInternal('startDate', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByStreak() {
    return addSortByInternal('streak', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByStreakDesc() {
    return addSortByInternal('streak', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByText() {
    return addSortByInternal('text', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByTextDesc() {
    return addSortByInternal('text', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByType() {
    return addSortByInternal('type', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByTypeDesc() {
    return addSortByInternal('type', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByYesterDaily() {
    return addSortByInternal('yesterDaily', Sort.asc);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QAfterSortBy>
      thenByYesterDailyDesc() {
    return addSortByInternal('yesterDaily', Sort.desc);
  }
}

extension PomoticaTasksOrderQueryWhereDistinct
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct> {
  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByAlias({bool caseSensitive = true}) {
    return addDistinctByInternal('alias', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByAttribute({bool caseSensitive = true}) {
    return addDistinctByInternal('attribute', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByCollapseChecklist() {
    return addDistinctByInternal('collapseChecklist');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByCompleted() {
    return addDistinctByInternal('completed');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByCreatedAt() {
    return addDistinctByInternal('createdAt');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByDate() {
    return addDistinctByInternal('date');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByEveryX() {
    return addDistinctByInternal('everyX');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByFrequency({bool caseSensitive = true}) {
    return addDistinctByInternal('frequency', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByIsDue() {
    return addDistinctByInternal('isDue');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByIsSync() {
    return addDistinctByInternal('isSync');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByNotes({bool caseSensitive = true}) {
    return addDistinctByInternal('notes', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByPomoticataskid() {
    return addDistinctByInternal('pomoticataskid');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByPriority() {
    return addDistinctByInternal('priority');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByStartDate() {
    return addDistinctByInternal('startDate');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByStreak() {
    return addDistinctByInternal('streak');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByText({bool caseSensitive = true}) {
    return addDistinctByInternal('text', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByType({bool caseSensitive = true}) {
    return addDistinctByInternal('type', caseSensitive: caseSensitive);
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByValue() {
    return addDistinctByInternal('value');
  }

  QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QDistinct>
      distinctByYesterDaily() {
    return addDistinctByInternal('yesterDaily');
  }
}

extension PomoticaTasksOrderQueryProperty
    on QueryBuilder<PomoticaTasksOrder, PomoticaTasksOrder, QQueryProperty> {
  QueryBuilder<PomoticaTasksOrder, String?, QQueryOperations> aliasProperty() {
    return addPropertyNameInternal('alias');
  }

  QueryBuilder<PomoticaTasksOrder, String, QQueryOperations>
      attributeProperty() {
    return addPropertyNameInternal('attribute');
  }

  QueryBuilder<PomoticaTasksOrder, bool?, QQueryOperations>
      collapseChecklistProperty() {
    return addPropertyNameInternal('collapseChecklist');
  }

  QueryBuilder<PomoticaTasksOrder, bool?, QQueryOperations>
      completedProperty() {
    return addPropertyNameInternal('completed');
  }

  QueryBuilder<PomoticaTasksOrder, DateTime, QQueryOperations>
      createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<PomoticaTasksOrder, DateTime?, QQueryOperations> dateProperty() {
    return addPropertyNameInternal('date');
  }

  QueryBuilder<PomoticaTasksOrder, int?, QQueryOperations> everyXProperty() {
    return addPropertyNameInternal('everyX');
  }

  QueryBuilder<PomoticaTasksOrder, String?, QQueryOperations>
      frequencyProperty() {
    return addPropertyNameInternal('frequency');
  }

  QueryBuilder<PomoticaTasksOrder, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<PomoticaTasksOrder, String, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<PomoticaTasksOrder, bool?, QQueryOperations> isDueProperty() {
    return addPropertyNameInternal('isDue');
  }

  QueryBuilder<PomoticaTasksOrder, bool, QQueryOperations> isSyncProperty() {
    return addPropertyNameInternal('isSync');
  }

  QueryBuilder<PomoticaTasksOrder, List<String>?, QQueryOperations>
      nextDueProperty() {
    return addPropertyNameInternal('nextDue');
  }

  QueryBuilder<PomoticaTasksOrder, String, QQueryOperations> notesProperty() {
    return addPropertyNameInternal('notes');
  }

  QueryBuilder<PomoticaTasksOrder, int?, QQueryOperations>
      pomoticataskidProperty() {
    return addPropertyNameInternal('pomoticataskid');
  }

  QueryBuilder<PomoticaTasksOrder, double, QQueryOperations>
      priorityProperty() {
    return addPropertyNameInternal('priority');
  }

  QueryBuilder<PomoticaTasksOrder, DateTime?, QQueryOperations>
      startDateProperty() {
    return addPropertyNameInternal('startDate');
  }

  QueryBuilder<PomoticaTasksOrder, int?, QQueryOperations> streakProperty() {
    return addPropertyNameInternal('streak');
  }

  QueryBuilder<PomoticaTasksOrder, List<String>, QQueryOperations>
      tagsProperty() {
    return addPropertyNameInternal('tags');
  }

  QueryBuilder<PomoticaTasksOrder, String, QQueryOperations> textProperty() {
    return addPropertyNameInternal('text');
  }

  QueryBuilder<PomoticaTasksOrder, String, QQueryOperations> typeProperty() {
    return addPropertyNameInternal('type');
  }

  QueryBuilder<PomoticaTasksOrder, DateTime, QQueryOperations>
      updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }

  QueryBuilder<PomoticaTasksOrder, double, QQueryOperations> valueProperty() {
    return addPropertyNameInternal('value');
  }

  QueryBuilder<PomoticaTasksOrder, bool?, QQueryOperations>
      yesterDailyProperty() {
    return addPropertyNameInternal('yesterDaily');
  }
}
