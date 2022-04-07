import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
part 'pomoticaTasksOrderModel.g.dart';

@Collection()
class PomoticaTasksOrder {
  @Id()
  int? pomoticataskid;

  final String? frequency;
  final String type;
  final String notes;
  final List<String> tags;
  final double value;
  final double priority;
  final String attribute;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String text;
  final String? alias;
  final int? everyX;
  final int? streak;
  final List<String>? nextDue;
  final bool? yesterDaily;
  final bool? completed;
  final bool? collapseChecklist;
  final DateTime? startDate;
  final bool? isDue;
  final DateTime? date;
  final bool isSync;
  PomoticaTasksOrder({
    this.pomoticataskid,
    required this.frequency,
    required this.type,
    required this.notes,
    required this.tags,
    required this.value,
    required this.priority,
    required this.attribute,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.text,
    required this.alias,
    required this.everyX,
    required this.streak,
    this.nextDue,
    required this.yesterDaily,
    required this.completed,
    required this.collapseChecklist,
    this.startDate,
    required this.isDue,
    this.date,
    required this.isSync,
  });

  PomoticaTasksOrder copyWith({
    int? pomoticataskid,
    String? frequency,
    String? type,
    String? notes,
    List<String>? tags,
    double? value,
    double? priority,
    String? attribute,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? text,
    String? alias,
    int? everyX,
    int? streak,
    List<String>? nextDue,
    bool? yesterDaily,
    bool? completed,
    bool? collapseChecklist,
    DateTime? startDate,
    bool? isDue,
    DateTime? date,
    bool? isSync,
  }) {
    return PomoticaTasksOrder(
      pomoticataskid: pomoticataskid ?? this.pomoticataskid,
      frequency: frequency ?? this.frequency,
      type: type ?? this.type,
      notes: notes ?? this.notes,
      tags: tags ?? this.tags,
      value: value ?? this.value,
      priority: priority ?? this.priority,
      attribute: attribute ?? this.attribute,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      text: text ?? this.text,
      alias: alias ?? this.alias,
      everyX: everyX ?? this.everyX,
      streak: streak ?? this.streak,
      nextDue: nextDue ?? this.nextDue,
      yesterDaily: yesterDaily ?? this.yesterDaily,
      completed: completed ?? this.completed,
      collapseChecklist: collapseChecklist ?? this.collapseChecklist,
      startDate: startDate ?? this.startDate,
      isDue: isDue ?? this.isDue,
      date: date ?? this.date,
      isSync: isSync ?? this.isSync,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pomoticataskid': pomoticataskid,
      'frequency': frequency,
      'type': type,
      'notes': notes,
      'tags': tags,
      'value': value,
      'priority': priority,
      'attribute': attribute,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
      'id': id,
      'text': text,
      'alias': alias,
      'everyX': everyX,
      'streak': streak,
      'nextDue': nextDue,
      'yesterDaily': yesterDaily,
      'completed': completed,
      'collapseChecklist': collapseChecklist,
      'startDate': startDate?.millisecondsSinceEpoch,
      'isDue': isDue,
      'date': date?.millisecondsSinceEpoch,
      'isSync': isSync,
    };
  }

  factory PomoticaTasksOrder.fromMap(Map<String, dynamic> map) {
    return PomoticaTasksOrder(
      pomoticataskid: map['pomoticataskid']?.toInt(),
      frequency: map['frequency'] ?? '',
      type: map['type'] ?? '',
      notes: map['notes'] ?? '',
      tags: List<String>.from(map['tags']),
      value: map['value']?.toDouble() ?? 0.0,
      priority: map['priority']?.toDouble() ?? 0.0,
      attribute: map['attribute'] ?? '',
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt']),
      id: map['id'] ?? '',
      text: map['text'] ?? '',
      alias: map['alias'] ?? '',
      everyX: map['everyX']?.toInt() ?? 0,
      streak: map['streak']?.toInt() ?? 0,
      nextDue: List<String>.from(map['nextDue']),
      yesterDaily: map['yesterDaily'] ?? false,
      completed: map['completed'] ?? false,
      collapseChecklist: map['collapseChecklist'] ?? false,
      startDate: map['startDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['startDate'])
          : null,
      isDue: map['isDue'] ?? false,
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'])
          : null,
      isSync: map['isSync'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory PomoticaTasksOrder.fromJson(String source) =>
      PomoticaTasksOrder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PomoticaTasksOrder(pomoticataskid: $pomoticataskid, frequency: $frequency, type: $type, notes: $notes, tags: $tags, value: $value, priority: $priority, attribute: $attribute, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, text: $text, alias: $alias, everyX: $everyX, streak: $streak, nextDue: $nextDue, yesterDaily: $yesterDaily, completed: $completed, collapseChecklist: $collapseChecklist, startDate: $startDate, isDue: $isDue, date: $date, isSync: $isSync)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PomoticaTasksOrder &&
        other.pomoticataskid == pomoticataskid &&
        other.frequency == frequency &&
        other.type == type &&
        other.notes == notes &&
        listEquals(other.tags, tags) &&
        other.value == value &&
        other.priority == priority &&
        other.attribute == attribute &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.id == id &&
        other.text == text &&
        other.alias == alias &&
        other.everyX == everyX &&
        other.streak == streak &&
        listEquals(other.nextDue, nextDue) &&
        other.yesterDaily == yesterDaily &&
        other.completed == completed &&
        other.collapseChecklist == collapseChecklist &&
        other.startDate == startDate &&
        other.isDue == isDue &&
        other.date == date &&
        other.isSync == isSync;
  }

  @override
  int get hashCode {
    return pomoticataskid.hashCode ^
        frequency.hashCode ^
        type.hashCode ^
        notes.hashCode ^
        tags.hashCode ^
        value.hashCode ^
        priority.hashCode ^
        attribute.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        id.hashCode ^
        text.hashCode ^
        alias.hashCode ^
        everyX.hashCode ^
        streak.hashCode ^
        nextDue.hashCode ^
        yesterDaily.hashCode ^
        completed.hashCode ^
        collapseChecklist.hashCode ^
        startDate.hashCode ^
        isDue.hashCode ^
        date.hashCode ^
        isSync.hashCode;
  }
}
