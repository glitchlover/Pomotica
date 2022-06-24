import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/logic/assetPathLogic.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/model/musicModel.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/screen/HomeScreeen.dart/setMarket.dart';
import 'package:pomotica/services/documentServices.dart';
import 'package:pomotica/services/myHabiticaAuth.dart';
import 'package:pomotica/widget/myIconButton.dart';

import '../Themes/myText.dart';

class MyMusicPlayer extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const MyMusicPlayer({Key? key, required this.pctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyMusicPlayerController ctrl = Get.put(MyMusicPlayerController(pctrl));
    return AlertDialog(
      backgroundColor: MyColors.appBackgroundColor,
      scrollable: true,
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                MyIconButton(
                    onPressed: () {
                      ctrl.onClick();
                    },
                    icon: Obx(() => Icon(
                        ctrl.isPlaying.value ? Iconsax.play : Iconsax.pause))),
                Spacer(),
                MyIconButton(
                    onPressed: () async {
                      if (jsonDecode(await DocumentServices(db: "auth")
                              .retriveAuth())["apiKey"] ==
                          MyHabiticaAuth.apiKey) {
                        Get.dialog(SetMarket());
                      }
                    },
                    icon: Icon(Iconsax.shop))
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: Get.width - 200,
              height: Get.height - 200,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: ctrl.musics.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
                itemBuilder: (BuildContext context, int index) {
                  return MusicTile(ctrl: ctrl, index: index);
                },
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class MusicTile extends StatelessWidget {
  const MusicTile({
    Key? key,
    required this.ctrl,
    required this.index,
  }) : super(key: key);

  final MyMusicPlayerController ctrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText(
                    ctrl.musics[index].name
                        .substring(0, ctrl.musics[index].name.indexOf(".")),
                    color: MyColors.primaryWhite)
                .techi(),
            SizedBox(width: 20),
            Icon(
              Icons.volume_mute,
              color: Colors.grey.withOpacity(0.5),
            ),
            Expanded(
              child: Obx(() => Slider(
                    min: 0.0,
                    max: 1.0,
                    value: ctrl.volume.value,
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey.withOpacity(0.5),
                    onChanged: (val) => {ctrl.onVolumeChange(val, this.index)},
                  )),
            ),
            Icon(
              Icons.volume_up,
              color: Colors.grey.withOpacity(0.5),
            ),
          ]),
    );
  }
}

class MyMusicPlayerController extends GetxController {
  Rx<double> volume = 0.0.obs;
  Rx<bool> isPlaying = false.obs;
  late String selectedMusic;
  List<MusicModel> musics = [
    MusicModel(name: "fire.wav", price: 0, priceType: "coin", isPurchased: true)
  ];
  late List<AudioPlayer> players = [];
  late AudioPlayer _player;
  PomoSpaceControllers pctrl;

  MyMusicPlayerController(this.pctrl);

  setPlayer(int index) {
    _player =
        players.firstWhere((player) => player.playerId == musics[index].name);
    // inspect(_player);
  }

  @override
  void onInit() async {
    initPlayers();
    callsWhenPomoRuns();
    super.onInit();
  }

  @override
  void onClose() {
    players.forEach((player) async {
      player
        ..audioCache.clearAll()
        ..dispose();
    });
    print("player disposed");
    super.onClose();
  }

  void onClick() async {
    isPlaying.value = !isPlaying.value;
    !isPlaying.value
        ? players.forEach((player) async => await onPlay(player, selectedMusic))
        : players.forEach((player) async => await player.pause());
  }

  void onVolumeChange(double val, int index) {
    selectedMusic = musics[index].name;
    volume.value = val;
    setPlayer(index);
    _player.setVolume(volume.value);
    update();
    // print(volume.value);
  }

  initPlayers() async {
    if (musics.length != players.length) {
      for (var music in musics) {
        players.add(AudioPlayer(playerId: music.name));
      }

      for (var player in players) {
        player
          ..setReleaseMode(ReleaseMode.loop)
          ..setVolume(volume.value)
          ..setPlayerMode(PlayerMode.mediaPlayer);
      }
    }
  }

  Future<void> onPlay(AudioPlayer player, String selectedMusic) async {
    final byteData = await rootBundle.load('assets/music/$selectedMusic');

    // create a temporary file on the device to be read by the native side
    final file = File(
        '${(await getApplicationDocumentsDirectory()).path}\\pomoticaDb\\music\\$selectedMusic');

    if (!file.existsSync()) {
      await file.create(recursive: true);
      await file.writeAsBytes(byteData.buffer.asUint8List());
    }
    player.play(DeviceFileSource(file.path));
  }
  
  void callsWhenPomoRuns() {
    // pctrl.currentStatus == PomodoroStatus.runningPomodoro ? onPlay() //TODO: Later
  }
}
