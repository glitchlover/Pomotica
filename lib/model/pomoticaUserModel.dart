import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
part 'pomoticaUserModel.g.dart';

@Collection()
class PomoticaUserModel {
  @Id()
  int? id;

  final String username;
  final int defaultWorkingTime;
  final int breakTime;
  final int bigBreakTime;
  final int numberOfSessions;

  PomoticaUserModel({
    this.id,
    required this.username,
    required this.defaultWorkingTime,
    required this.breakTime,
    required this.bigBreakTime,
    required this.numberOfSessions,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'defaultWorkingTime': defaultWorkingTime,
      'breakTime': breakTime,
      'bigBreakTime': bigBreakTime,
      'numberOfSessions': numberOfSessions,
    };
  }

  factory PomoticaUserModel.fromMap(Map<String, dynamic> map) {
    return PomoticaUserModel(
      id: map['id']?.toInt(),
      username: map['username'] ?? '',
      defaultWorkingTime: map['defaultWorkingTime']?.toInt() ?? 0,
      breakTime: map['breakTime']?.toInt() ?? 0,
      bigBreakTime: map['bigBreakTime']?.toInt() ?? 0,
      numberOfSessions: map['numberOfSessions']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PomoticaUserModel.fromJson(String source) =>
      PomoticaUserModel.fromMap(json.decode(source));
}
