// ignore_for_file: file_names

class UserModel {
  String? uid;
  String? email;
  String? password;
  String? firstName;
  String? secondName;

  UserModel({
    this.uid,
    this.email,
    this.password,
    this.firstName,
    this.secondName,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      password: map['password'],
      firstName: map['firstName'],
      secondName: map['secondName'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'firstName': firstName,
      'secondName': secondName,
    };
  }
}
