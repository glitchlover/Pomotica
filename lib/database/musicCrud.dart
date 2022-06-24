import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';

import '../model/musicModel.dart';

class MusicCrud {
  static final Isar isar = MyIsar.isar;

  static List<int> musicCreate(List<MusicModel> musics) {
    for(var music in musics) {
      isar.writeTxnSync((isar) => {
          music.id =
              isar.musicModels.putSync(music)
        });
    }
    
    return [];
  }

  static List<MusicModel> musicGetALl() {
    var allmusic = isar.musicModels.where().findAllSync();
    return allmusic;
  }
}
