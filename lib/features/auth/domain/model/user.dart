import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User{

  const factory User({
    String? id,
    String? email,
    String? password,
    String? phone,
    String? name,
    String? img,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
  => _$UserFromJson(json);

}


