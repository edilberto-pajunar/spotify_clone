import 'dart:convert';

class Music {
  final String name;
  final String image;

  Music({
    required this.name,
    required this.image,
  });

  Music copyWith({
    String? name,
    String? image,
  }) {
    return Music(
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
    };
  }

  factory Music.fromMap(Map<String, dynamic> map) {
    return Music(
      name: map['name'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Music.fromJson(String source) => Music.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Music(name: $name, image: $image)';

  @override
  bool operator ==(covariant Music other) {
    if (identical(this, other)) return true;

    return other.name == name && other.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode;
}
