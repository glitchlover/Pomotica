import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/model/habiticaUserModel.dart';

import 'enums/pomodoroStatus.dart';

part 'pomoticaUserModel.g.dart';

@Collection()
class PomoticaUserModel {
  @Id()
  int? id;

  final int defaultWorkingTime;
  final int breakTime;
  final int bigBreakTime;
  final int numberOfSessions;
  final int pomoCoins;
  final int pomoGems;
  
  @PomodoroStatusConverter()
  final PomodoroStatus currentStatus;
  final int currentSession;
  

  PomoticaUserModel({
    this.id,
    required this.defaultWorkingTime,
    required this.breakTime,
    required this.bigBreakTime,
    required this.numberOfSessions,
    required this.pomoCoins,
    required this.pomoGems,
    required this.currentStatus,
    required this.currentSession,
  });

  final Map<PomodoroStatus, String> statusDescription = {
    PomodoroStatus.normal: 'Let\'s start our journey!',
    PomodoroStatus.runningPomodoro: 'Focus in your task buddy!',
    PomodoroStatus.pausedPomodoro: 'Ready for a pomodoro?',
    PomodoroStatus.extraPomodoro: 'Wow you are a hard worker ...',
    PomodoroStatus.runningShortBreak: 'Time to relax comrade ...',
    PomodoroStatus.runningLongBreak: 'Time to take a long break, comrade ...',
    PomodoroStatus.extraBreak: 'You are taking too long, come back fast!',
    PomodoroStatus.setFinished:
        'Well done comrade, you have reached to your goal! , here\'s your reward',
    PomodoroStatus.giveUp: 'Well try harder next time ...'
  };

  final Map<PomodoroStatus, String> statusAnimation = {
    PomodoroStatus.normal: "Tomato Waiting",
    PomodoroStatus.runningPomodoro: "Tomato Happy",
    PomodoroStatus.pausedPomodoro: "Tomato Waiting",
    PomodoroStatus.extraPomodoro: "Tomato Extra Happy",
    PomodoroStatus.runningShortBreak: "Tomato Sleeping",
    PomodoroStatus.runningLongBreak: "Tomato Sleeping",
    PomodoroStatus.extraBreak: "Tomato Meh",
    PomodoroStatus.setFinished: "Tomato Extra Happy",
    PomodoroStatus.giveUp: "Tomato Dead"
  };

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'defaultWorkingTime': defaultWorkingTime,
      'breakTime': breakTime,
      'bigBreakTime': bigBreakTime,
      'numberOfSessions': numberOfSessions,
      'pomoCoins': pomoCoins,
      'pomoGems': pomoGems,
      'currentStatus': currentStatus.index,
      'currentSession': currentSession,
    };
  }

  factory PomoticaUserModel.fromMap(Map<String, dynamic> map) {
    return PomoticaUserModel(
      id: map['id']?.toInt(),
      defaultWorkingTime: map['defaultWorkingTime']?.toInt() ?? 0,
      breakTime: map['breakTime']?.toInt() ?? 0,
      bigBreakTime: map['bigBreakTime']?.toInt() ?? 0,
      numberOfSessions: map['numberOfSessions']?.toInt() ?? 0,
      pomoCoins: map['pomoCoins']?.toInt() ?? 0,
      pomoGems: map['pomoGems']?.toInt() ?? 0,
      currentStatus: PomodoroStatus.values[map["currentStatus"].index],
      currentSession: map['currentSession']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PomoticaUserModel.fromJson(String source) =>
      PomoticaUserModel.fromMap(json.decode(source));

  PomoticaUserModel copyWith({
    int? id,
    int? defaultWorkingTime,
    int? breakTime,
    int? bigBreakTime,
    int? numberOfSessions,
    int? pomoCoins,
    int? pomoGems,
    PomodoroStatus? currentStatus,
    int? currentSession,
  }) {
    return PomoticaUserModel(
      id: id ?? this.id,
      defaultWorkingTime: defaultWorkingTime ?? this.defaultWorkingTime,
      breakTime: breakTime ?? this.breakTime,
      bigBreakTime: bigBreakTime ?? this.bigBreakTime,
      numberOfSessions: numberOfSessions ?? this.numberOfSessions,
      pomoCoins: pomoCoins ?? this.pomoCoins,
      pomoGems: pomoGems ?? this.pomoGems,
      currentStatus: currentStatus ?? this.currentStatus,
      currentSession: currentSession ?? this.currentSession,
    );
  }

  @override
  String toString() {
    return 'PomoticaUserModel(id: $id, defaultWorkingTime: $defaultWorkingTime, breakTime: $breakTime, bigBreakTime: $bigBreakTime, numberOfSessions: $numberOfSessions, pomoCoins: $pomoCoins, pomoGems: $pomoGems, currentStatus: $currentStatus, currentSession: $currentSession)';
  }

}
