import 'dart:convert';

import 'package:isar/isar.dart';

part 'musicModel.g.dart';

@Collection()
class MusicModel {
  @Id()
  int? id;

  final String name;
  final int? price;
  final String? priceType;
  bool? isPurchased;
  String path = "";
  MusicModel({
    this.id,
    required this.name,
    this.price,
    this.priceType,
    this.isPurchased,
  }) {
    path = "music/$name";
  }

  MusicModel copyWith({
    int? id,
    String? name,
    int? price,
    String? priceType,
    bool? isPurchased,
  }) {
    return MusicModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      priceType: priceType ?? this.priceType,
      isPurchased: isPurchased ?? this.isPurchased,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'priceType': priceType,
      'isPurchased': isPurchased,
    };
  }

  factory MusicModel.fromMap(Map<String, dynamic> map) {
    return MusicModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      priceType: map['priceType'] ?? '',
      isPurchased: map['isPurchased'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory MusicModel.fromJson(String source) =>
      MusicModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MusicModel(id: $id, name: $name, price: $price, priceType: $priceType, isPurchased: $isPurchased)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MusicModel &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.priceType == priceType &&
        other.isPurchased == isPurchased;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        priceType.hashCode ^
        isPurchased.hashCode;
  }
}
