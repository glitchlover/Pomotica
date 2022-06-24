import 'package:pomotica/logic/assetPathLogic.dart';
import 'package:pomotica/model/musicModel.dart';

class MusicLogic {
  late List<MusicModel> musicModels;
  MusicLogic() {
    int i = 0;
    for (var music in musicModels) {
      MusicModel(name: AssetPathLogic().assets[i]);
      i++;
    }
  }
}
