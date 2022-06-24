import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class AssetPathLogic {
  List<String> assets = [];

  Future<void> loadFiles() async {
    String assetFile = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = await json.decode(assetFile);

    assets.addAll(manifestMap.keys);
  }
}
