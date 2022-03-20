import 'dart:convert';

class UserModel {
  static const String collection = 'user';

  final String id;
  final String uid;
  final String email;
  final String? displayName;
  final String? photoUrl;
  final List<String> level;
  final String? cellPhone;
  final String? address;
  final String? cep;
  final List<String>? communityId;
  final DateTime createdAt;
  final bool isActive;
  UserModel({
    required this.id,
    required this.uid,
    required this.email,
    this.displayName,
    this.photoUrl,
    required this.level,
    this.cellPhone,
    this.address,
    this.cep,
    this.communityId,
    required this.createdAt,
    required this.isActive,
  });

  UserModel copyWith({
    String? id,
    String? uid,
    String? email,
    String? displayName,
    String? photoUrl,
    List<String>? level,
    String? cellPhone,
    String? address,
    String? cep,
    List<String>? communityId,
    DateTime? createdAt,
    bool? isActive,
  }) {
    return UserModel(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      level: level ?? this.level,
      cellPhone: cellPhone ?? this.cellPhone,
      address: address ?? this.address,
      cep: cep ?? this.cep,
      communityId: communityId ?? this.communityId,
      createdAt: createdAt ?? this.createdAt,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'level': level,
      'cellPhone': cellPhone,
      'address': address,
      'cep': cep,
      'communityId': communityId,
      'createdAt': createdAt,
      'isActive': isActive,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      displayName: map['displayName'],
      photoUrl: map['photoUrl'],
      level: List<String>.from(map['level'] ?? []),
      cellPhone: map['cellPhone'],
      address: map['address'],
      cep: map['cep'],
      communityId: List<String>.from(map['communityId'] ?? []),
      createdAt: DateTime.fromMillisecondsSinceEpoch(
          map['createdAt']?.millisecondsSinceEpoch ??
              DateTime.now().millisecondsSinceEpoch),
      isActive: map['isActive'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, uid: $uid, email: $email, displayName: $displayName, photoUrl: $photoUrl, level: $level, cellPhone: $cellPhone, address: $address, cep: $cep, communityId: $communityId, createdAt: $createdAt, isActive: $isActive)';
  }
}
